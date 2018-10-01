class AddOrdersTable < ActiveRecord::Migration[5.2]
  def change
    create_table "orders", force: :cascade do |t|
      t.string "status"
      t.bigint "user_id"
      t.decimal "total_price"
    end
  end
end
