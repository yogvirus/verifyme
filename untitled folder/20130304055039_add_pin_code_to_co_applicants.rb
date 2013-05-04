class AddPinCodeToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :pin_code, :string
  end
end
