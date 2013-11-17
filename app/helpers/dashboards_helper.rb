module DashboardsHelper

 def customer_data
  CustomerVerification.find_all_by_tab_id(current_user.tab, :order => 'created_at DESC')
  #CoApplicantVerification.find_all_by_tab_id(current_user.tab, :order => 'created_at DESC')
 end

  def customers_list
    CustomerVerification.where("created_at::date = ?", Date.today - 4)
  end

  def business_list
    BusinessVerification.where("created_at::date = ?", Date.today - 4)
  end

  def co_applicants_list
    CoApplicantVerification.where("created_at::date = ?", Date.today - 4)
  end

  def co_app_business_list
    ClientVerification.where("created_at::date = ?", Date.today - 4)
  end

  def todays_list
    customers_list+business_list+co_applicants_list+co_app_business_list
  end



end
