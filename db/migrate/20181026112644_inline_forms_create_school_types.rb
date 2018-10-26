class InlineFormsCreateSchoolTypes < ActiveRecord::Migration[5.0]

  def self.up
    create_table :school_types do |t|
      t.string :name 
      t.timestamps
    end
  end

  def self.down
    drop_table :school_types
  end

end
