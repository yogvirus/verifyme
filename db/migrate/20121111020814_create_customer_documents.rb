class CreateCustomerDocuments < ActiveRecord::Migration
  def change
    create_table :customer_documents do |t|
      t.integer :customer_id
      t.string :photo
      t.string :photo_name

      t.timestamps
    end
  end
end
