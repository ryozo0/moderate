class StoresController < ApplicationController



  def index
    @stores = Store.search(params[:search])
  end



end
