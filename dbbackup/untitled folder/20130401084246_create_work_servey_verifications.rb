class CreateWorkServeyVerifications < ActiveRecord::Migration
  def change
    create_table :work_servey_verifications do |t|
      t.integer :user_id
      t.integer :work_servey_id
      t.integer :tab_id

      t.timestamps
    end
  end
end
