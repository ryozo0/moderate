class Store < ActiveRecord::Base
  def self.search(search) #ここでのself.はUser.を意味する
    if search
      Store.where(['name LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。User.は省
    else
      Store.all #全て表示。User.は省略
    end
  end
end
