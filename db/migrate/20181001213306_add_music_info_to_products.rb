class AddMusicInfoToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :condition, :string
    add_column :products, :maker, :string
    add_column :products, :model, :string
    add_column :products, :tuning, :string
    add_column :products, :finish, :string
    add_column :products, :category, :string
    add_column :products, :sub_category, :string
    add_column :products, :made_in, :string
    add_column :products, :year, :integer
    add_column :products, :shipping, :decimal, :precision => 8, :scale => 2

  end
end
