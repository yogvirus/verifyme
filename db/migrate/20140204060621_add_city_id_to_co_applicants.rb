class AddCityIdToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :city_id, :integer
  end
end
