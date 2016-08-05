class AddressProofsServeys < ActiveRecord::Migration
  def up
    create_table :address_proofs_serveys, :id => false do |t|
     t.integer :address_proof_id
     t.integer :servey_id
    end
  end

  def down
  end
end
