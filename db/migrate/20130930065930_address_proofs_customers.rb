class AddressProofsCustomers < ActiveRecord::Migration
  def up
    create_table :address_proofs_customers, :id => false do |t|
      t.integer :address_proof_id
      t.integer :customer_id
    end   
  end

  def down
  end
end
