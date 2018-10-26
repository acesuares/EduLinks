class InlineFormsCreateGroups < ActiveRecord::Migration[5.0]

  def self.up
    create_table :groups do |t|
      t.string :name 
      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end

end
