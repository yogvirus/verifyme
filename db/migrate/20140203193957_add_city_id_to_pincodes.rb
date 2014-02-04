class AddCityIdToPincodes < ActiveRecord::Migration
  def change
    add_column :pincodes, :city_id, :integer
  end
end
