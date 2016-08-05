class CreateCoApplicants < ActiveRecord::Migration
  def change
    create_table :co_applicants do |t|
      t.string :name
      t.string :address
      t.float  :latitude
      t.float  :longitude
      t.date :d_o_b
      t.timestamps
    end
  end
end
