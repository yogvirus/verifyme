class CreateBDocuments < ActiveRecord::Migration
  def change
    create_table :b_documents do |t|
      t.string :name

      t.timestamps
    end
  end
end
