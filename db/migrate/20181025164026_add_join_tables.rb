class AddJoinTables < ActiveRecord::Migration[5.2]
  require "#{Rails.root}/lib/migrations/conversion.rb"

  def self.up
    include Conversion
    create_join_table "groups", "links"
    create_join_table "topics", "links"
  end

  def self.down
    include Conversion
    drop_join_table "groups", "links"
    drop_join_table "topics", "links"
  end

end
