class CreatePincodes < ActiveRecord::Migration
  def change
    create_table :pincodes do |t|
      t.string :name
      t.integer :pin_number

      t.timestamps
    end
  end
end
