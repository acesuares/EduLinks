class AddImageToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :image, :string
  end
end
