class PlacesController < ApplicationController
  def index
    @places = Place.search(params[:search])
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      marker.infowindow render_to_string(partial: "places/infowindow", locals: { place: place})
      marker.json({description: place.description})
    end
  end

end
