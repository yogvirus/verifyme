class CreateWebcamPictures < ActiveRecord::Migration
  def change
    create_table :webcam_pictures do |t|
      t.string  :name
      t.string  :snapshot
      t.integer :customer_id
      t.integer :servey_id

      t.timestamps
    end
  end
end
