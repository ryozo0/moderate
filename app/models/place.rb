class Place < ActiveRecord::Base
  geocoded_by :address
  before_validation :geocode

  def self.search(search)
    if search
      Place.where(["address LIKE ?", "%#{search}%"])
    else
      Place.all
    end
  end
end
