class Fixcolumnname < ActiveRecord::Migration
  def change
    rename_column :customers, :state, :contact_number
  end
end
