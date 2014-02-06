class ReportsController < ApplicationController
include ApplicationHelper
include ReportsHelper

  def index
   @start_date = params[:start_date] || Date.today-5
   @end_date = params[:end_date] || Date.today
   @tab_id = params[:tab_id].to_i
   @status = params[:status]
   @application_status = params[:application_status]
#all true
  if @tab_id!=0 && @status!='All' && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where('customer_verifications.tab_id = ? and DATE(customer_verifications.created_at) >= ? and DATE(customer_verifications.created_at) <= ? and customers.status = ? and customers.application_status = ? ', @tab_id , @start_date, @end_date, @status, @application_status)
     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.tab_id = ? and DATE(co_applicant_verifications.created_at) >= ? and DATE(co_applicant_verifications.created_at) <= ? and co_applicants.status = ? and co_applicants.application_status = ? ', @tab_id, @start_date, @end_date, @status, @application_status)
     @business = BusinessVerification.joins(:business).where('business_verifications.tab_id = ? and DATE(business_verifications.created_at) >= ? and DATE(business_verifications.created_at) <= ? and businesses.status = ? and businesses.application_status = ?', @tab_id, @start_date, @end_date, @status, @application_status)
     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.tab_id = ? and DATE(client_verifications.created_at) >= ? and DATE(client_verifications.created_at) <= ? and co_applicant_businesses.status = ? and co_applicant_businesses.application_status = ? ', @tab_id, @start_date, @end_date, @status,@application_status)
      @total = (@customers + @co_applicants + @business + @work_detail).count

      @pending_customers = @customers.where('customers.status = ?', 'submitted').count
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted').count
      @pending_business = @business.where('businesses.status = ?', 'submitted').count
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted').count
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified').count
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified').count
      @completed_business = @business.where('businesses.status = ?', 'verified').count
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified').count
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified').count
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified').count
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified').count
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified').count
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#status false
   elsif @tab_id!=0 && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.tab_id = ? and customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @tab_id, @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.tab_id = ? and co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @tab_id, @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('business_verifications.tab_id = ? and business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @tab_id, @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.tab_id = ? and client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @tab_id, @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail).count

      @pending_customers = @customers.where('customers.status = ?', 'submitted').count
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted').count
      @pending_business = @business.where('businesses.status = ?', 'submitted').count
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted').count
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified').count
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified').count
      @completed_business = @business.where('businesses.status = ?', 'verified').count
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified').count
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified').count
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified').count
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified').count
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified').count
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#tab false
   elsif @status!='All' && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customers.status = ? and customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @status, @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicants.status = ? and co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @status, @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('businesses.status = ? and business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @status, @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('co_applicant_businesses.status = ? and client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @status, @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail).count

      @pending_customers = @customers.where('customers.status = ?', 'submitted').count
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted').count
      @pending_business = @business.where('businesses.status = ?', 'submitted').count
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted').count
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified').count
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified').count
      @completed_business = @business.where('businesses.status = ?', 'verified').count
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified').count
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified').count
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified').count
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified').count
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified').count
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#tab and status false
   elsif @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail).count

      @pending_customers = @customers.where('customers.status = ?', 'submitted').count
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted').count
      @pending_business = @business.where('businesses.status = ?', 'submitted').count
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted').count
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified').count
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified').count
      @completed_business = @business.where('businesses.status = ?', 'verified').count
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified').count
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified').count
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified').count
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified').count
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified').count
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   elsif @tab_id!=0 && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customer_verifications.tab_id = ? ", @start_date, @end_date, @tab_id)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicant_verifications.tab_id = ?', @start_date, @end_date, @tab_id)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ? and business_verifications.tab_id = ? ', @start_date, @end_date, @tab_id)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ? and client_verifications.tab_id = ?', @start_date, @end_date, @tab_id)

      @total = (@customers + @co_applicants + @business + @work_detail).count

      @pending_customers = @customers.where('customers.status = ?', 'submitted').count
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted').count
      @pending_business = @business.where('businesses.status = ?', 'submitted').count
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted').count
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified').count
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified').count
      @completed_business = @business.where('businesses.status = ?', 'verified').count
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified').count
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified').count
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified').count
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified').count
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified').count
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work


   else
#all false
      @customers = CustomerVerification.joins(:customer).where('customer_verifications.created_at >= ? and customer_verifications.created_at <= ?  ', @start_date, @end_date)

      @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ?', @start_date, @end_date)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ?', @start_date, @end_date)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ?', @start_date, @end_date)

      @total = (@customers + @co_applicants + @business + @work_detail).count

      @pending_customers = @customers.where('customers.status = ?', 'submitted').count
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted').count
      @pending_business = @business.where('businesses.status = ?', 'submitted').count
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted').count
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified').count
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified').count
      @completed_business = @business.where('businesses.status = ?', 'verified').count
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified').count
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified').count
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified').count
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified').count
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified').count
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   end

    respond_to do |format|
      format.html
      #format.xls { render xlsx: :index, filename: "my_items_doc" }
    end
 end


 def pending
   @start_date = params[:start_date] || Date.today-5
   @end_date = params[:end_date] || Date.today
   @tab_id = params[:tab_id].to_i
   @status = params[:status]
   @application_status = params[:application_status]
#all true
  if @tab_id!=0 && @status!='All' && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where('customer_verifications.tab_id = ? and DATE(customer_verifications.created_at) >= ? and DATE(customer_verifications.created_at) <= ? and customers.status = ? and customers.application_status = ? ', @tab_id , @start_date, @end_date, @status, @application_status)
puts "----------------------------", @customers.inspect
     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.tab_id = ? and DATE(co_applicant_verifications.created_at) >= ? and DATE(co_applicant_verifications.created_at) <= ? and co_applicants.status = ? and co_applicants.application_status = ? ', @tab_id, @start_date, @end_date, @status, @application_status)
     @business = BusinessVerification.joins(:business).where('business_verifications.tab_id = ? and DATE(business_verifications.created_at) >= ? and DATE(business_verifications.created_at) <= ? and businesses.status = ? and businesses.application_status = ?', @tab_id, @start_date, @end_date, @status, @application_status)
     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.tab_id = ? and DATE(client_verifications.created_at) >= ? and DATE(client_verifications.created_at) <= ? and co_applicant_businesses.status = ? and co_applicant_businesses.application_status = ? ', @tab_id, @start_date, @end_date, @status,@application_status)
      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#status false
   elsif @tab_id!=0 && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.tab_id = ? and customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @tab_id, @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.tab_id = ? and co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @tab_id, @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('business_verifications.tab_id = ? and business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @tab_id, @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.tab_id = ? and client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @tab_id, @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#tab false
   elsif @status!='All' && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customers.status = ? and customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @status, @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicants.status = ? and co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @status, @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('businesses.status = ? and business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @status, @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('co_applicant_businesses.status = ? and client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @status, @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#tab and status false
   elsif @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   elsif @tab_id!=0 && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customer_verifications.tab_id = ? ", @start_date, @end_date, @tab_id)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicant_verifications.tab_id = ?', @start_date, @end_date, @tab_id)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ? and business_verifications.tab_id = ? ', @start_date, @end_date, @tab_id)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ? and client_verifications.tab_id = ?', @start_date, @end_date, @tab_id)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work


   else
#all false
      @customers = CustomerVerification.joins(:customer).where('customer_verifications.created_at >= ? and customer_verifications.created_at <= ?  ', @start_date, @end_date)

      @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ?', @start_date, @end_date)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ?', @start_date, @end_date)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ?', @start_date, @end_date)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   end
 end

 def progress
   @start_date = params[:start_date] || Date.today-5
   @end_date = params[:end_date] || Date.today
   @tab_id = params[:tab_id].to_i
   @status = params[:status]
   @application_status = params[:application_status]
#all true
  if @tab_id!=0 && @status!='All' && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where('customer_verifications.tab_id = ? and DATE(customer_verifications.created_at) >= ? and DATE(customer_verifications.created_at) <= ? and customers.status = ? and customers.application_status = ? ', @tab_id , @start_date, @end_date, @status, @application_status)
puts "----------------------------", @customers.inspect
     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.tab_id = ? and DATE(co_applicant_verifications.created_at) >= ? and DATE(co_applicant_verifications.created_at) <= ? and co_applicants.status = ? and co_applicants.application_status = ? ', @tab_id, @start_date, @end_date, @status, @application_status)
     @business = BusinessVerification.joins(:business).where('business_verifications.tab_id = ? and DATE(business_verifications.created_at) >= ? and DATE(business_verifications.created_at) <= ? and businesses.status = ? and businesses.application_status = ?', @tab_id, @start_date, @end_date, @status, @application_status)
     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.tab_id = ? and DATE(client_verifications.created_at) >= ? and DATE(client_verifications.created_at) <= ? and co_applicant_businesses.status = ? and co_applicant_businesses.application_status = ? ', @tab_id, @start_date, @end_date, @status,@application_status)
      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#status false
   elsif @tab_id!=0 && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.tab_id = ? and customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @tab_id, @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.tab_id = ? and co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @tab_id, @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('business_verifications.tab_id = ? and business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @tab_id, @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.tab_id = ? and client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @tab_id, @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#tab false
   elsif @status!='All' && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customers.status = ? and customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @status, @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicants.status = ? and co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @status, @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('businesses.status = ? and business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @status, @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('co_applicant_businesses.status = ? and client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @status, @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#tab and status false
   elsif @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   elsif @tab_id!=0 && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customer_verifications.tab_id = ? ", @start_date, @end_date, @tab_id)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicant_verifications.tab_id = ?', @start_date, @end_date, @tab_id)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ? and business_verifications.tab_id = ? ', @start_date, @end_date, @tab_id)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ? and client_verifications.tab_id = ?', @start_date, @end_date, @tab_id)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work


   else
#all false
      @customers = CustomerVerification.joins(:customer).where('customer_verifications.created_at >= ? and customer_verifications.created_at <= ?  ', @start_date, @end_date)

      @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ?', @start_date, @end_date)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ?', @start_date, @end_date)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ?', @start_date, @end_date)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   end
 end

 def completed
   @start_date = params[:start_date] || Date.today-5
   @end_date = params[:end_date] || Date.today
   @tab_id = params[:tab_id].to_i
   @status = params[:status]
   @application_status = params[:application_status]
#all true
  if @tab_id!=0 && @status!='All' && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where('customer_verifications.tab_id = ? and DATE(customer_verifications.created_at) >= ? and DATE(customer_verifications.created_at) <= ? and customers.status = ? and customers.application_status = ? ', @tab_id , @start_date, @end_date, @status, @application_status)
puts "----------------------------", @customers.inspect
     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.tab_id = ? and DATE(co_applicant_verifications.created_at) >= ? and DATE(co_applicant_verifications.created_at) <= ? and co_applicants.status = ? and co_applicants.application_status = ? ', @tab_id, @start_date, @end_date, @status, @application_status)
     @business = BusinessVerification.joins(:business).where('business_verifications.tab_id = ? and DATE(business_verifications.created_at) >= ? and DATE(business_verifications.created_at) <= ? and businesses.status = ? and businesses.application_status = ?', @tab_id, @start_date, @end_date, @status, @application_status)
     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.tab_id = ? and DATE(client_verifications.created_at) >= ? and DATE(client_verifications.created_at) <= ? and co_applicant_businesses.status = ? and co_applicant_businesses.application_status = ? ', @tab_id, @start_date, @end_date, @status,@application_status)
      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#status false
   elsif @tab_id!=0 && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.tab_id = ? and customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @tab_id, @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.tab_id = ? and co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @tab_id, @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('business_verifications.tab_id = ? and business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @tab_id, @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.tab_id = ? and client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @tab_id, @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#tab false
   elsif @status!='All' && @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customers.status = ? and customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @status, @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicants.status = ? and co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @status, @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('businesses.status = ? and business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @status, @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('co_applicant_businesses.status = ? and client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @status, @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

#tab and status false
   elsif @application_status!='All' && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customers.application_status = ? ", @start_date, @end_date, @application_status)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicants.application_status = ?', @start_date, @end_date, @application_status)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ? and businesses.application_status = ? ', @start_date, @end_date, @application_status)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ? and co_applicant_businesses.application_status = ?', @start_date, @end_date, @application_status)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   elsif @tab_id!=0 && params[:start_date] && params[:end_date]
      @customers = CustomerVerification.joins(:customer).where("customer_verifications.created_at >= ? and customer_verifications.created_at <= ? and customer_verifications.tab_id = ? ", @start_date, @end_date, @tab_id)

     @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ? and co_applicant_verifications.tab_id = ?', @start_date, @end_date, @tab_id)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ? and business_verifications.tab_id = ? ', @start_date, @end_date, @tab_id)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ? and client_verifications.tab_id = ?', @start_date, @end_date, @tab_id)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work


   else
#all false
      @customers = CustomerVerification.joins(:customer).where('customer_verifications.created_at >= ? and customer_verifications.created_at <= ?  ', @start_date, @end_date)

      @co_applicants = CoApplicantVerification.joins(:co_applicant).where('co_applicant_verifications.created_at >= ? and co_applicant_verifications.created_at <= ?', @start_date, @end_date)

     @business = BusinessVerification.joins(:business).where('business_verifications.created_at >= ? and business_verifications.created_at <= ?', @start_date, @end_date)

     @work_detail = ClientVerification.joins(:co_applicant_business).where('client_verifications.created_at >= ? and client_verifications.created_at <= ?', @start_date, @end_date)

      @total = (@customers + @co_applicants + @business + @work_detail)

      @pending_customers = @customers.where('customers.status = ?', 'submitted')
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted')
      @pending_business = @business.where('businesses.status = ?', 'submitted')
      @pending_work = @work_detail.where('co_applicant_businesses.status = ?', 'submitted')
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified')
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified')
      @completed_business = @business.where('businesses.status = ?', 'verified')
      @completed_work = @work_detail.where('co_applicant_businesses.status = ?', 'verified')
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified')
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified')
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified')
      @progress_work = @work_detail.where('co_applicant_businesses.status = ?', 'awaiting_to_get_verified')
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   end
 end


end
