class CreateOfficeAssets < ActiveRecord::Migration
  def change
    create_table :office_assets do |t|
      t.string :name

      t.timestamps
    end
  end
end
