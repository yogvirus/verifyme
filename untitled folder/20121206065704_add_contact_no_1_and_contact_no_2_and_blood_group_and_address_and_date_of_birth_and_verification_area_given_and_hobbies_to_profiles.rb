class AddContactNo1AndContactNo2AndBloodGroupAndAddressAndDateOfBirthAndVerificationAreaGivenAndHobbiesToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :contact_no_1, :string
    add_column :profiles, :contact_no_2, :string
    add_column :profiles, :blood_group, :string
    add_column :profiles, :address, :text
    add_column :profiles, :date_of_birth, :date
    add_column :profiles, :verification_area, :string
    add_column :profiles, :hobbies, :text
  end
end
