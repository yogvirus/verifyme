class AddAttachmentPhotoToCustomerDocuments < ActiveRecord::Migration
  def self.up
    change_table :customer_documents do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :customer_documents, :photo
  end
end
