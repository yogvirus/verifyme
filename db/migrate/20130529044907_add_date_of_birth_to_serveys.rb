class AddDateOfBirthToServeys < ActiveRecord::Migration
  def change
    add_column :serveys, :date_of_birth, :date
  end
end
