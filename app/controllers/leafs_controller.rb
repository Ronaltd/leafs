class LeafsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new] 

  def index
    @leafs = Leaf.all
  end
  
  def show
    @leaf = Leaf.find(params[:id])
  end
  
  def new
  end   

  def create
    @leaf = Leaf.new(user: current_user, credit: 0, accepted: false)

    if @leaf.save
      create_items(@leaf, params[:items])
      @leaf.update(credit:calculate_credit(@leaf))
      balance = @leaf.user.leafs_balance + @leaf.credit
      @leaf.user.update(leafs_balance: balance ) 
      redirect_to @leaf, notice: 'Leafs creditados com sucesso.'
    else
      render :new
    end
  end


  def update
    @leaf = Leaf.find(params[:id])
    @dropoff = Dropoff.find(params[:leaf][:dropoff_id].to_i)
    
    if @leaf.update(dropoff: @dropoff, accepted: true)
      redirect_to @leaf, notice: 'Leaf atualizado com sucesso.'
    else
      render :show, notice: "Atualização não realizada."
    end
    
  end

  private

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
