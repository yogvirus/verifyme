class AddServeyIdToCustomerDocuments < ActiveRecord::Migration
  def change
    add_column :customer_documents, :servey_id, :integer
  end
end
