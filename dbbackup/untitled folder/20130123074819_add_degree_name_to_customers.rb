class AddDegreeNameToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :degree_name, :string
  end
end
