class BDocumentsBusinesses < ActiveRecord::Migration
  def up
    create_table :b_documents_businesses, :id => false do |t|
     t.integer :business_id 
     t.integer :b_document_id
    end 
  end

  def down
   drop_table :b_documents_businesses
  end
end
