class AddDepartmentIdToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :department_id, :integer
  end
end
