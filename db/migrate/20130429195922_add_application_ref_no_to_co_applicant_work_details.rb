class AddApplicationRefNoToCoApplicantWorkDetails < ActiveRecord::Migration
  def change
    add_column :co_applicant_work_details, :application_ref_no, :integer
  end
end
