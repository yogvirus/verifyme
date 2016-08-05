class AddDateOfBirthToCoApplicantServeys < ActiveRecord::Migration
  def change
    add_column :co_applicant_serveys, :date_of_birth, :date
  end
end
