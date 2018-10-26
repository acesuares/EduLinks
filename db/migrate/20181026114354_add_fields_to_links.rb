class AddFieldsToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :link, :string
    add_column :links, :description, :text
  end
end
