class AddSchoolTypeToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :school_type_id, :integer, default: 1
  end
end
