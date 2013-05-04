class AddStatusToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :status, :string
  end
end
