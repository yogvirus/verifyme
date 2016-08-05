class AddCityIdToCoApplicantBusinesses < ActiveRecord::Migration
  def change
    add_column :co_applicant_businesses, :city_id, :integer
  end
end
