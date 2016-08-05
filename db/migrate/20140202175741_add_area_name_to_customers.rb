class AddAreaNameToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :area_name, :string
  end
end
