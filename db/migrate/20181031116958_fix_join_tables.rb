class FixJoinTables < ActiveRecord::Migration[5.2]
  require "#{Rails.root}/lib/migrations/conversion.rb"

  def self.up
    include Conversion
    drop_join_table "topics", "links"
    create_join_table "sub_topics", "links"
  end

  def self.down
    include Conversion
    create_join_table "topics", "links"
    drop_join_table "sub_topics", "links"
  end

end
