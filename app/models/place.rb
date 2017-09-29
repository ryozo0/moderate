class Place < ActiveRecord::Base
  geocoded_by :address
  before_validation :geocode

  def self.search(search) #ここでのself.はUser.を意味する
    if search
      Place.where(['name LIKE ?', "%#{search}%"])  #検索とnameの部分一致を表示。User.は省
    else
      Place.all #全て表示。User.は省略
    end
  end
end
