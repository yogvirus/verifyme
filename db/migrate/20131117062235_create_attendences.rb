class CreateAttendences < ActiveRecord::Migration
  def change
    create_table :attendences do |t|
      t.integer :user_id
      t.datetime :login_time
      t.datetime :logout_time
      t.date :login_date

      t.timestamps
    end
  end
end
