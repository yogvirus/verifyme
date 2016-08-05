class AddNewDepartmentNameToWorkServeys < ActiveRecord::Migration
  def change
    add_column :work_serveys, :new_department_name, :string
  end
end
