class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home

    # on home.html.erb
    @total = Item.includes(:leaf).where(leafs:{accepted: true}).reduce(0) {| result, item | item.amount + result }

    @dropoffs = Dropoff.all
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @dropoffs.geocoded.map do |dropoff|
      {
        lat: dropoff.latitude,
        lng: dropoff.longitude,
        info_window: render_to_string(partial: "info_window", locals: { dropoff: dropoff }),
        image_url: helpers.asset_url('Map_icon.png')
      }
    end
  end

end

