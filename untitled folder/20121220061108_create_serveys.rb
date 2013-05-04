class CreateServeys < ActiveRecord::Migration
  def change
    create_table :serveys do |t|
      t.integer :customer_id
      t.integer :tab_id
      t.boolean :address_confirmed
      t.boolean :name_and_stay_confirm
      t.date :date_of_visit
      t.time :time_of_visit
      t.string :person_contacted
      t.string :relation_with_applicant
      t.integer :years_lived_at_current_address
      t.string :residence_status
      t.string :educational_qualification
      t.string :marital_status
      t.integer :no_of_family_members
      t.integer :working_member
      t.integer :children
      t.boolean :spouse_working
      t.string :spouse_working_detail
      t.boolean :name_plate_seen
      t.boolean :credit_card
      t.string :card_no
      t.float :card_limit
      t.string :issuing_bank
      t.date :expiry_date
      t.string :customer_beaviour
      t.string :neighbour_ref
      t.string :name_varified_from
      t.string :type_of_residence
      t.string :locality_of_residence
      t.string :ease_of_location
      t.string :construction_of_residence
      t.string :comments_of_exteriors
      t.float :carpet_area_in_sq_feet
      t.string :interior_condition
      t.string :asset_seen_at_residence
      t.boolean :potrait_on_wall
      t.boolean :applicant_residing_detail
      t.string :application_availibility_time
      t.integer :no_of_family_member_in_the_house
      t.text :verifiers_remark
      t.boolean :accept_or_decline
      t.string :refer_to_bank

      t.timestamps
    end
  end
end
