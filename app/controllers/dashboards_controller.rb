class DashboardsController < ApplicationController
  before_filter :authenticate_user!
  include ApplicationHelper
  include DashboardsHelper

  def index
   @customers = Customer.all
   @total_pending = total_pending
   @total_in_progress = total_in_progress
   @total_completed = total_completed
   @my_pending_1 = tab_customer_verification_pending
   @my_pending_2 = tab_business_verification_pending
   @my_pending_3 = tab_co_applicant_verification_pending
   @my_pending_4 = tab_co_applicant_business_pending
   @start_date = params[:start_date] || Date.today-5
   @end_date = params[:end_date] || Date.today
   if params[:start_date] && params[:end_date]
     redirect_to search_path(:start => params[:start_date], :end => params[:end_date])
   end
  end


end
