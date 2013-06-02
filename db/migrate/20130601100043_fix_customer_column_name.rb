class FixCustomerColumnName < ActiveRecord::Migration
  def change
    rename_column :customers, :degree_name, :application_status   
    change_column :businesses, :date_of_birth, :string
    rename_column :businesses, :date_of_birth, :application_status
    change_column :co_applicants, :d_o_b, :string
    rename_column :co_applicants, :d_o_b, :application_status
    change_column :co_applicant_businesses, :date_of_birth, :string
    rename_column :co_applicant_businesses, :date_of_birth, :application_status
  end
end
