class AddMessageToCoApplicantBusinesses < ActiveRecord::Migration
  def change
    add_column :co_applicant_businesses, :message, :string
  end
end
