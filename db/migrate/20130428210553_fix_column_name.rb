class FixColumnName < ActiveRecord::Migration
  def up

    rename_column :co_applicant_work_details, :business_id, :co_applicant_business_id
    add_column :co_applicant_work_details, :city, :string
    add_column :co_applicant_work_details, :state, :string
  end

  def down
  end
end
