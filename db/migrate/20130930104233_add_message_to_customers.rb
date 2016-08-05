class AddMessageToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :message, :string
  end
end
