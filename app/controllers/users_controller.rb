class UsersController < ApplicationController
# GET /orders
# GET /orders.json
def index
  @users = User.all
  @user = @users.new(params[:id])
end

# GET /orders/1
# GET /orders/1.json
def show

  @user = User.find(params[:format])
end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:user).permit( :email, :rating, :location, :joined)
    end
end
