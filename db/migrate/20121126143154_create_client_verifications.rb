class CreateClientVerifications < ActiveRecord::Migration
  def change
    create_table :client_verifications do |t|
      t.integer :co_applicant_business_id
      t.integer :tab_id
      t.integer :user_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
