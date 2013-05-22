class DashboardsController < ApplicationController
  before_filter :authenticate_user!
  def index
   @customers = Customer.all
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
  end
end
