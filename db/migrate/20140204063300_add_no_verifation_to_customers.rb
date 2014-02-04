class AddNoVerifationToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :no_verifcation, :boolean
  end
end
