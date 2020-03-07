class PagesController < ApplicationController
  
  def index

    @listings = Listing.all
    @q = Listing.ransack(params[:q])
    @listings = @q.result.includes(brand: [])

  end

  def page_not_found
    @q = Listing.ransack(params[:q])
    @listings = @q.result.includes(brand: [])
  end

  def more
    @listings = Listing.all
    
  end


end
