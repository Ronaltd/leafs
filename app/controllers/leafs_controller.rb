class LeafsController < ApplicationController
  include LeafCalculator
  skip_before_action :authenticate_user!, only: [:new] 

  def index
    @baskets = current_user.baskets
    @leafs = current_user.leafs.where(accepted: true)
    @balance = (@baskets + @leafs).sort_by { |balance| balance.created_at}
    
    @leafs_pendent = current_user.leafs.where(accepted: false)
    @leaf_pendent_total = 0
    @leafs_pendent.each { |leaf_pendent| @leaf_pendent_total += leaf_pendent.credit }
    @total_user = 0
    @leafs.each do |leaf|
      leaf.items.each do |item|
        @total_user += item.amount
      end
    end
  end
  
  def show
    @leaf = Leaf.find(params[:id])
  end
  
  def new

  end   

  def create
    @leaf = Leaf.new(user: current_user, credit: 0, accepted: false)
    if params[:items][:dropoff].present?
      @dropoff = Dropoff.find(params[:items][:dropoff])
      @leaf.dropoff = @dropoff
    end
    if validate_items(params)
      if @leaf.save
        create_items(@leaf, params[:items])
        @leaf.update(credit:calculate_credit(@leaf))
        redirect_to @leaf, notice: 'Seus leafs serão creditados em sua conta em até 48hrs após confirmação de entrega. Obrigado!'
      else
        render :new
      end
    else
      flash[:notice] = 'Oops, quantidade insuficiente!'
      render :new
    end
  end


  def update
    @leaf = Leaf.find(params[:id])
    @dropoff = Dropoff.find(params[:leaf][:dropoff_id].to_i)
    
    if @leaf.update(dropoff: @dropoff)
      # calculate_leafs
      # balance = @leaf.user.leafs_balance + @leaf.credit
      # @leaf.user.update(leafs_balance: balance)
      redirect_to @leaf, notice: 'Leaf aguardando aprovação.'
    else
      render :show, notice: "Atualização não realizada."
    end
    
  end

  private

  def validate_items(params)
     params[:items][:vidro].to_i > 0 || params[:items][:papel].to_i > 0 || params[:items][:plastico].to_i > 0 || params[:items][:metal].to_i > 0
  end

  def create_items(leaf, params)
    Item.create(leaf: leaf,item_type: 'vidro',  amount: params[:vidro].to_i) if params[:vidro].to_i.positive?
    Item.create(leaf: leaf,item_type: 'papel',  amount: params[:papel].to_i) if params[:papel].to_i.positive?
    Item.create(leaf: leaf,item_type: 'plastico',  amount: params[:plastico].to_i) if params[:plastico].to_i.positive?
    Item.create(leaf: leaf,item_type: 'metal',  amount: params[:metal].to_i) if params[:metal].to_i.positive?
  end

  def calculate_credit(leaf)
    credit = 0
    leaf.items.each do |item|
      credit += (Item::ITEM_TYPE[item.item_type.to_sym]*item.amount)
    end
    credit
  end

end
