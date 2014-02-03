class ReportsController < ApplicationController
include ApplicationHelper
include ReportsHelper

  def index
   @start_date = params[:start_date] || Date.today-5
   @end_date = params[:end_date] || Date.today
   @tab_id = params[:tab_id].to_i
   @status = params[:status]



#  if @tab_id!=0 && @status!='All' && @application_status && params[:start_date] && params[:end_date]
#      @customers = Servey.joins(:customer).where('serveys.tab_id = ? and serveys.created_at >= ? and serveys.created_at <= ? and #customers.application_status = ? and customers.status = ? ', @tab_id , @start_date, @end_date, @application_status, @status)

#     @co_applicants = CoApplicantServey.joins(:co_applicant).where('co_applicant_serveys.tab_id = ? and co_applicant_serveys.created_at >= ? and co_applicant_serveys.created_at <= ? and co_applicants.application_status = ? and co_applicants.status = ? ', @tab_id, @start_date, @end_date, @application_status, @status)

#    @business = WorkServey.joins(:business).where('work_serveys.tab_id = ? and work_serveys.created_at >= ? and work_serveys.created_at <= ? and businesses.application_status =? and businesses.status = ?', @tab_id, @start_date, @end_date, @application_status, @status)

#     @work_detail = CoApplicantWorkDetail.joins(:co_applicant_business).where('co_applicant_work_details.tab_id = ? and co_applicant_work_details.created_at >= ? and co_applicant_work_details.created_at <= ? and co_applicant_businesses.application_status =? and co_applicant_businesses.status = ? ', @tab_id, @start_date, @end_date, @application_status, @status)



  if @tab_id!=0 && @status!='All' && params[:start_date] && params[:end_date]
      @customers = Servey.joins(:customer).where('serveys.tab_id = ? and serveys.created_at >= ? and serveys.created_at <= ? and customers.status = ? ', @tab_id , @start_date, @end_date, @status)

     @co_applicants = CoApplicantServey.joins(:co_applicant).where('co_applicant_serveys.tab_id = ? and co_applicant_serveys.created_at >= ? and co_applicant_serveys.created_at <= ? and co_applicants.status = ? ', @tab_id, @start_date, @end_date, @status)

     @business = WorkServey.joins(:business).where('work_serveys.tab_id = ? and work_serveys.created_at >= ? and work_serveys.created_at <= ? and businesses.status = ?', @tab_id, @start_date, @end_date, @status)

     @work_detail = CoApplicantWorkDetail.joins(:co_applicant_business).where('co_applicant_work_details.tab_id = ? and co_applicant_work_details.created_at >= ? and co_applicant_work_details.created_at <= ? and co_applicant_businesses.status = ? ', @tab_id, @start_date, @end_date, @status)

      @total = (@customers + @co_applicants + @business + @work_detail).count

      @pending_customers = @customers.where('customers.status = ?', 'submitted').count
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted').count
      @pending_business = @business.where('businesses.status = ?', 'submitted').count
      @pending_work = @work_detail.where('co_applicant_work_details.status = ?', 'submitted').count
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified').count
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified').count
      @completed_business = @business.where('businesses.status = ?', 'verified').count
      @completed_work = @work_detail.where('co_applicant_work_details.status = ?', 'verified').count
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified').count
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified').count
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified').count
      @progress_work = @work_detail.where('co_applicant_work_details.status = ?', 'awaiting_to_get_verified').count
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   elsif @tab_id!=0 && @status=='All' && params[:start_date] && params[:end_date]
      @customers = Servey.joins(:customer).where("serveys.tab_id = ? and serveys.created_at >= ? and serveys.created_at <= ?", @tab_id, @start_date, @end_date)

     @co_applicants = CoApplicantServey.joins(:co_applicant).where('co_applicant_serveys.tab_id = ? and co_applicant_serveys.created_at >= ? and co_applicant_serveys.created_at <= ?', @tab_id, @start_date, @end_date)

     @business = WorkServey.joins(:business).where('work_serveys.tab_id = ? and work_serveys.created_at >= ? and work_serveys.created_at <= ?', @tab_id, @start_date, @end_date)

     @work_detail = CoApplicantWorkDetail.joins(:co_applicant_business).where('co_applicant_work_details.tab_id = ? and co_applicant_work_details.created_at >= ? and co_applicant_work_details.created_at <= ?', @tab_id, @start_date, @end_date)

      @total = (@customers + @co_applicants + @business + @work_detail).count

      @pending_customers = @customers.where('customers.status = ?', 'submitted').count
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted').count
      @pending_business = @business.where('businesses.status = ?', 'submitted').count
      @pending_work = @work_detail.where('co_applicant_work_details.status = ?', 'submitted').count
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified').count
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified').count
      @completed_business = @business.where('businesses.status = ?', 'verified').count
      @completed_work = @work_detail.where('co_applicant_work_details.status = ?', 'verified').count
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified').count
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified').count
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified').count
      @progress_work = @work_detail.where('co_applicant_work_details.status = ?', 'awaiting_to_get_verified').count
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   elsif @tab_id==0 && @status!='All'

     @customers = Servey.joins(:customer).where('serveys.created_at >= ? and serveys.created_at <= ? and customers.status = ? ', @start_date, @end_date, @status)

     @co_applicants = CoApplicantServey.joins(:co_applicant).where('co_applicant_serveys.created_at >= ? and co_applicant_serveys.created_at <= ? and co_applicants.status = ? ', @start_date, @end_date, @status)

     @business = WorkServey.joins(:business).where('work_serveys.created_at >= ? and work_serveys.created_at <= ? and businesses.status = ? ', @start_date, @end_date, @status)

     @work_detail = CoApplicantWorkDetail.joins(:co_applicant_business).where('co_applicant_work_details.created_at >= ? and co_applicant_work_details.created_at <= ? and co_applicant_businesses.status = ? ', @start_date, @end_date, @status)

      @total = (@customers + @co_applicants + @business + @work_detail).count

      @pending_customers = @customers.where('customers.status = ?', 'submitted').count
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted').count
      @pending_business = @business.where('businesses.status = ?', 'submitted').count
      @pending_work = @work_detail.where('co_applicant_work_details.status = ?', 'submitted').count
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified').count
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified').count
      @completed_business = @business.where('businesses.status = ?', 'verified').count
      @completed_work = @work_detail.where('co_applicant_work_details.status = ?', 'verified').count
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified').count
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified').count
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified').count
      @progress_work = @work_detail.where('co_applicant_work_details.status = ?', 'awaiting_to_get_verified').count
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   else

      @customers = Servey.joins(:customer).where('serveys.created_at >= ? and serveys.created_at <= ?  ', @start_date, @end_date)

      @co_applicants = CoApplicantServey.joins(:co_applicant).where('co_applicant_serveys.created_at >= ? and co_applicant_serveys.created_at <= ?', @start_date, @end_date)

     @business = WorkServey.joins(:business).where('work_serveys.created_at >= ? and work_serveys.created_at <= ?', @start_date, @end_date)

     @work_detail = CoApplicantWorkDetail.joins(:co_applicant_business).where('co_applicant_work_details.created_at >= ? and co_applicant_work_details.created_at <= ?', @start_date, @end_date)

      @total = (@customers + @co_applicants + @business + @work_detail).count

      @pending_customers = @customers.where('customers.status = ?', 'submitted').count
      @pending_co_applicants = @co_applicants.where('co_applicants.status = ?', 'submitted').count
      @pending_business = @business.where('businesses.status = ?', 'submitted').count
      @pending_work = @work_detail.where('co_applicant_work_details.status = ?', 'submitted').count
      @all_pending = @pending_customers +@pending_co_applicants + @pending_business+@pending_work

      @completed_customers = @customers.where('customers.status = ?', 'verified').count
      @completed_co_applicants = @co_applicants.where('co_applicants.status = ?', 'verified').count
      @completed_business = @business.where('businesses.status = ?', 'verified').count
      @completed_work = @work_detail.where('co_applicant_work_details.status = ?', 'verified').count
      @all_completed = @completed_customers +@completed_co_applicants + @completed_business + @completed_work

      @progress_customers = @customers.where('customers.status = ?', 'awaiting_to_get_verified').count
      @progress_co_applicants = @co_applicants.where('co_applicants.status = ?', 'awaiting_to_get_verified').count
      @progress_business = @business.where('businesses.status = ?', 'awaiting_to_get_verified').count
      @progress_work = @work_detail.where('co_applicant_work_details.status = ?', 'awaiting_to_get_verified').count
      @all_progress = @progress_customers +@progress_co_applicants + @progress_business + @progress_work

   end

    respond_to do |format|
      format.html
      format.xls { render xlsx: :index, filename: "my_items_doc" }
    end
 end
end
