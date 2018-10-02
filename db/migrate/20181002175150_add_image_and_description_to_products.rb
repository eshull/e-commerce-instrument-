class AddImageAndDescriptionToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image, :string
    add_column :products, :description, :string
  end
end
