class ShopController < ApplicationController
  def index
	@products= Product.order("Name asc").all
  end
end
