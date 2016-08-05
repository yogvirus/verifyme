class AddDepartmentIdToWorkServeys < ActiveRecord::Migration
  def change
    add_column :work_serveys, :department_id, :integer
  end
end
