class AddApplicationRefNoToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :application_ref_no, :integer
  end
end
