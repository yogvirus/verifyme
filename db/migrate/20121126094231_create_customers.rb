class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :application_ref_no
      t.string :agency_name
      t.string :fh_code
      t.string :applicant_name
      t.text :address
      t.string :landmark
      t.date :d_o_b
      t.integer :pincode_id

      t.timestamps
    end
  add_index :customers, [:address] # Polymorphic
  add_index :customers, [:application_ref_no] # Polymorphic
  add_index :customers, [:applicant_name] # Polymorphic
  end
end
