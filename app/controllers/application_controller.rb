class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_order
  helper_method :cart_quantity
  helper_method :cart_qty

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def cart_quantity
    item_quantity = 0
    OrderItem.where(order_id: current_order.id).each do |orderitem|
      item_quantity += orderitem.quantity
    end
    item_quantity
  end

  def cart_qty
    item_quantity = current_order.order_items.length
  end

  def after_sign_in_path_for(resource)
    products_path
  end

end
