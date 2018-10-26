class InlineFormsCreateLinks < ActiveRecord::Migration[5.0]

  def self.up
    create_table :links do |t|
      t.string :name 
      t.belongs_to :user 
      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end

end
