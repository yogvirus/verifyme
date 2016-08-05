class AddCompanyNameToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :company_name, :string
  end
end
