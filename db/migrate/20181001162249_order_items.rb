class OrderItems < ActiveRecord::Migration[5.2]
  def change
      create_table "order_items", force: :cascade do |t|
         t.integer "quantity"
         t.integer "product_id"
         t.integer "order_id"
       end
    end
end
