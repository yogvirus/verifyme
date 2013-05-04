class AddTabIdToWorkServeys < ActiveRecord::Migration
  def change
    add_column :work_serveys, :tab_id, :integer
  end
end
