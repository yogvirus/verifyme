class AddMacAddressToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :mac_address, :string
  end
end
