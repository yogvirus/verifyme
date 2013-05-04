class AddPhotoToBusinessDocuments < ActiveRecord::Migration
  def change
    add_column :business_documents, :photo_file_name, :string
    add_column :business_documents, :photo_content_type, :string
    add_column :business_documents, :photo_file_size, :integer
  end
end
