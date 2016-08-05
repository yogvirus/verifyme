class AddContactNumberToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :contact_number, :string
  end
end
