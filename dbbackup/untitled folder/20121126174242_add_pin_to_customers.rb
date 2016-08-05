class AddPinToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :pin, :integer
    add_column :customers, :country_state, :string
    add_column :customers, :country_city, :string
    add_column :customers, :country_name, :string
  end
end
