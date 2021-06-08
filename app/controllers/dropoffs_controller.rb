class DropoffsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @dropoffs = Dropoff.all
  end
end
