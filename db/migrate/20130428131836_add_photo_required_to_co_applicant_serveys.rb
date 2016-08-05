class AddPhotoRequiredToCoApplicantServeys < ActiveRecord::Migration
  def change
    add_column :co_applicant_serveys, :photo_required, :boolean
  end
end
