class CreateAddressProofs < ActiveRecord::Migration
  def change
    create_table :address_proofs do |t|
      t.string :name

      t.timestamps
    end
  end
end
