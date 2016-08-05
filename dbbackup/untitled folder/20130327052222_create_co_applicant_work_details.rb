class CreateCoApplicantWorkDetails < ActiveRecord::Migration
  def change
    create_table :co_applicant_work_details do |t|
      t.integer :servey_id
      t.string  :office_address,     :default => "N/A"
      t.boolean :name_and_employee_confirm
      t.string  :applicant_designation,  :default => "N/A" 
      t.date    :date_of_visit
      t.time    :time_of_visit
      t.string  :person_met
      t.string  :designation_of_person_met
      t.string  :telephone_number
      t.string  :ext_number
      t.string  :mobile_number
      t.integer :number_of_years_in_present_employment
      t.boolean :visiting_card_obtained
      t.string  :name_of_the_company
      t.string  :type_of_business
      t.string  :nature_of_business
      t.string  :nob_in_detail
      t.string  :office_ownership
      t.string  :no_of_employees
      t.string  :no_of_branches
      t.float   :average_monthly_turn_over
      t.integer :no_of_customer_per_date
      t.string  :type_of_job
      t.string  :working_as
      t.boolean :job_transferable
      t.string  :name_of_the_company 
      t.float   :salary_drawn
      t.float   :no_of_years_worked
      t.boolean :board_seen
      t.string  :name_verified_from
      t.string  :type_of_office
      t.string  :locality_of_office
      t.string  :construction_of_office
      t.string  :exterior
      t.string  :interior
      t.float   :office_area
      t.string  :ease_of_location
      t.string  :activity_level
      t.integer :no_of_employees_sighted 
      t.integer :no_of_customer_seen
      t.boolean :political_party
      t.string  :no_of_item_seen
      t.text    :verifier_remark
      t.boolean :positive
      t.string  :refer_to_bank
      t.integer :user_id
      t.integer :verifier_signature

      t.timestamps
    end
  end
end
