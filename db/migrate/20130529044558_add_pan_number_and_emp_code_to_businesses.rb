class AddPanNumberAndEmpCodeToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :pan_number, :string
    add_column :businesses, :emp_code, :string
  end
end
