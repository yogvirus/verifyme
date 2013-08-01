module DashboardsHelper

 def customer_data
  CustomerVerification.find_all_by_tab_id(current_user.tab, :order => 'created_at DESC') 
  #CoApplicantVerification.find_all_by_tab_id(current_user.tab, :order => 'created_at DESC')
 end 

end
