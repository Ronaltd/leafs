class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # on home.html.erb
    @total = Item.includes(:leaf).where(leafs:{accepted: true}).reduce(0) {| result, item | item.amount + result }
  end

end

