class AddPancardNumberAndPassportNumberBankNameDrovingLicenceNumberAndElectricityAccNumberToServeys < ActiveRecord::Migration
  def change
    add_column :serveys, :pancard_number, :string
    add_column :serveys, :passport_number, :string
    add_column :serveys, :driving_licence_number, :string
    add_column :serveys, :electricity_acc_number, :string
  end
end
