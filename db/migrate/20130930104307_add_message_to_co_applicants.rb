class AddMessageToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :message, :string
  end
end
