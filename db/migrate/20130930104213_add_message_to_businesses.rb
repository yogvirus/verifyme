class AddMessageToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :message, :string
  end
end
