class AddUserInfoForInstrumentDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rating, :integer
    add_column :users, :location, :string
    add_column :users, :joined, :string
    add_column :users, :maker, :boolean, default: false
  end
end
