class AddCustomerIdToWorkServeys < ActiveRecord::Migration
  def change
    add_column :work_serveys, :customer_id, :integer
  end
end
