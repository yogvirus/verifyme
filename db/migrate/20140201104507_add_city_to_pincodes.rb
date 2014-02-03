class AddCityToPincodes < ActiveRecord::Migration
  def change
    add_column :pincodes, :city, :string
  end
end
