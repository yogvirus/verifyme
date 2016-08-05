class AddWorkServeyIdToCustomerVerifications < ActiveRecord::Migration
  def change
    add_column :customer_verifications, :work_servey_id, :integer
  end
end
