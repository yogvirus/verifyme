class DashboardsController < ApplicationController
  before_filter :authenticate_user!
  include ApplicationHelper
  include DashboardsHelper

  def index
   @customers = Customer.all
   
   @total_pending = total_pending
   @total_in_progress = total_in_progress
   @total_completed = total_completed
   #tab status
   @my_pending_1 = tab_customer_verification_pending
   @my_pending_2 = tab_business_verification_pending
   @my_pending_3 = tab_co_applicant_verification_pending
   @my_pending_4 = tab_co_applicant_business_pending
   #@all = pending_all_on_tab
   #@customer = Customer.find_all_by_status('submitted')
   #@all_id_s = @customer.map{|i| i.id }
   #@verifi_c = CustomerVerification.find_all_by_customer_id(@all_id_s).count 
   #admin status
   #@pending = pending_customer
   #@in_progress = customer_in_progress
   #@completed = completed_customer
   #@business_pending = pending_business
   #@business_in_progress = business_in_progress
   #@business_completed = completed_business
   #@co_applicant_pending = pending_co_applicant
   #@co_applicant_in_progress = co_applicant_in_progress
   #@co_applicant_completed = completed_co_applicant
   #@co_applicant_business_pending = pending_co_applicant_business
   #@co_applicant_business_in_progress = co_applicant_business_in_progress
   #@co_applicant_business_completed = co_applicant_business_completed
  end

end
