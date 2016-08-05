class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :branch_code
      t.string :contact_person

      t.timestamps
    end
  end
end
