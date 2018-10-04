class CategoriesController < ApplicationController

  # GET /products
  # GET /products.json
  def index
    @categories = Category.all


    # binding.pry
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

end
