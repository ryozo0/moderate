class PlacesController < ApplicationController
  def index
    @places = Place.search(params[:search])
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow place.name
    end
  end

end
