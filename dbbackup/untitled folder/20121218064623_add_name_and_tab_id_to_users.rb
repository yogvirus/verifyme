class AddNameAndTabIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :tab_id, :integer
  end
end
