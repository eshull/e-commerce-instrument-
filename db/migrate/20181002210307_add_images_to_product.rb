class AddImagesToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :second_image, :string
    add_column :products, :third_image, :string
  end
end
