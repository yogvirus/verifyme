class DashboardsController < ApplicationController
  before_filter :authenticate_user!
  def index
   @customers = Customer.all

   #/for admin/

   @pending = Customer.find_all_by_status('submitted')
   @in_progress = Customer.find_all_by_status('awaiting_to_get_verified')
   @completed = Customer.find_all_by_status('verified')

   @business_pending = Business.find_all_by_status('submitted')
   @business_in_progress = Business.find_all_by_status('awaiting_to_get_verified')
   @business_completed = Business.find_all_by_status('verified')

   @co_applicant_pending = CoApplicant.find_all_by_status('submitted')
   @co_applicant_in_progress = CoApplicant.find_all_by_status('awaiting_to_get_verified')
   @co_applicant_completed = CoApplicant.find_all_by_status('verified')

   @co_applicant_business_pending = CoApplicantBusiness.find_all_by_status('submitted')
   @co_applicant_business_in_progress = CoApplicantBusiness.find_all_by_status('awaiting_to_get_verified')
   @co_applicant_business_completed = CoApplicantBusiness.find_all_by_status('verified')

   @total_pending = (@pending.count)+(@business_pending.count)+(@co_applicant_pending.count)+(@co_applicant_business_pending.count)
   @total_in_progress = (@in_progress.count)+(@business_in_progress.count)+(@co_applicant_in_progress.count)+(@co_applicant_business_in_progress.count) 

   @total_completed = (@completed.count)+(@business_completed.count)+(@co_applicant_completed.count)+(@co_applicant_business_completed.count)
   #/for admin end /

   #/for tab user /

   @my_pending_1 = BusinessVerification.find_all_by_tab_id(current_user.tab).map{|d|d.business.status} 
   @my_pending_2 = CustomerVerification.find_all_by_tab_id(current_user.tab).map{|d|d.customer.status}
   @my_pending_3 = CoApplicantVerification.find_all_by_tab_id(current_user.tab).map{|d|d.co_applicant.status}
   @my_pending_4 = ClientVerification.find_all_by_tab_id(current_user.tab).map{|d|d.co_applicant_business.status}

   @all = (@my_pending_1 + @my_pending_2 + @my_pending_3 + @my_pending_4).count


   #/for tab user end / 
  end
end
