class CreateBusinessDocuments < ActiveRecord::Migration
  def change
    create_table :business_documents do |t|
      t.integer :business_id
      t.integer :work_servey_id

      t.timestamps
    end
  end
end
