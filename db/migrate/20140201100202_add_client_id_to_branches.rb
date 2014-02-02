class AddClientIdToBranches < ActiveRecord::Migration
  def change
    add_column :branches, :client_id, :integer
  end
end
