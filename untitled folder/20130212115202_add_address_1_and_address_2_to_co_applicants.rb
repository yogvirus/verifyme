class AddAddress1AndAddress2ToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :address_1, :boolean
    add_column :co_applicants, :address_2, :boolean
  end
end
