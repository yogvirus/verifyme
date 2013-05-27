class AddStatusToWorkServeys < ActiveRecord::Migration
  def change
    add_column :work_serveys, :status, :string
  end
end
