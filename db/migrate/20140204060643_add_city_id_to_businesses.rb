class AddCityIdToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :city_id, :integer
  end
end
