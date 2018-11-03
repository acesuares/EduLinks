class AddSlugs < ActiveRecord::Migration[5.2]
  def change
    add_column :school_types, :slug, :string
    add_column :groups, :slug, :string
    add_column :topics, :slug, :string
    add_column :sub_topics, :slug, :string
  end
end
