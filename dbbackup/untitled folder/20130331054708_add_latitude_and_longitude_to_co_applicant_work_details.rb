class AddLatitudeAndLongitudeToCoApplicantWorkDetails < ActiveRecord::Migration
  def change
    add_column :co_applicant_work_details, :latitude, :float
    add_column :co_applicant_work_details, :longitude, :float
  end
end
