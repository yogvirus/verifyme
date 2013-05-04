class AddSnapshotToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :snapshot, :string
  end
end
