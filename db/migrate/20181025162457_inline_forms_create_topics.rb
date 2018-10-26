class InlineFormsCreateTopics < ActiveRecord::Migration[5.0]

  def self.up
    create_table :topics do |t|
      t.string :name 
      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end

end
