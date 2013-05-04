class AddPinCodeToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :pin_code, :string
  end
end
