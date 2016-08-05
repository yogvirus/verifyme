class AddCompanyNameNewToWorkServeys < ActiveRecord::Migration
  def change
    add_column :work_serveys, :company_name_new, :string
  end
end
