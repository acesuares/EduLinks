class InlineFormsCreateSubTopics < ActiveRecord::Migration[5.0]

  def self.up
    create_table :sub_topics do |t|
      t.string :name 
      t.text :description 
      t.belongs_to :topic 
      t.timestamps
    end
  end

  def self.down
    drop_table :sub_topics
  end

end
