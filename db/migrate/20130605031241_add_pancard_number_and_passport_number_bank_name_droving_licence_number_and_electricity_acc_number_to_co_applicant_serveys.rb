class AddPancardNumberAndPassportNumberBankNameDrovingLicenceNumberAndElectricityAccNumberToCoApplicantServeys < ActiveRecord::Migration
  def change
    add_column :co_applicant_serveys, :pancard_number, :string
    add_column :co_applicant_serveys, :passport_number, :string
    add_column :co_applicant_serveys, :driving_licence_number, :string
    add_column :co_applicant_serveys, :electricity_acc_number, :string
  end
end
