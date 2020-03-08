class PaymentsController < ApplicationController
  before_action :authenticate_user! 
  skip_before_action :authenticate_user!, :only => [:success,:sold]


  def success

    id = params[:listingId]
    @listing = Listing.find(id)

    @q = Listing.ransack(params[:q])
    @listings = @q.result.includes(brand: [])

    @listings = Listing.all

    
    
  end

  def sold
    id = params[:id]
    @listing = Listing.find(id)
    
    @listing.destroy
    redirect_to root_path
  end

end
