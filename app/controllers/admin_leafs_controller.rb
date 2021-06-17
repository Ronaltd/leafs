class AdminLeafsController < ApplicationController
  include LeafCalculator
  def index
    if current_user.admin
      @leafs = Leaf.where(accepted: false)
    else
      redirect_to root_path, notice: "Usuário não autorizado"
    end
  end

  def update
    if current_user.admin
      @leaf= Leaf.find(params[:id])
      @leaf.accepted = true
      @leaf.save
      calculate_leafs(@leaf.user)

      redirect_to admin_leafs_path, notice: "Leaf aprovado"
    else
      redirect_to root_path, notice: "Usuário não autorizado"
    end
  end
end
