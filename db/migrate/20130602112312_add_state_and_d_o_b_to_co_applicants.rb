class AddStateAndDOBToCoApplicants < ActiveRecord::Migration
  def change
    add_column :co_applicants, :state, :string
    add_column :co_applicants, :d_o_b, :date
  end
end
