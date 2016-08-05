class AddStateToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :state, :string
    add_column :customers, :status, :string
  end
end
