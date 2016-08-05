class AddPhotoRequiredToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :photo_required, :boolean
  end
end
