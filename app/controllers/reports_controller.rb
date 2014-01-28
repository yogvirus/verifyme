class ReportsController < ApplicationController
include ApplicationHelper
include ReportsHelper
  def index
   @start_date = params[:start_date] || Date.today-5
   @end_date = params[:end_date] || Date.today
   @tab_id = params[:tab_id].to_i
   @status = params[:status]

   if @tab_id!=0 && @status!='All' && params[:start_date] && params[:end_date]
     @customers = Servey.joins(:customer).where('serveys.tab_id = ? and serveys.created_at >= ? and serveys.created_at <= ? and customers.status = ? ', @tab_id , Date.today-60, Date.today, @status)

   elsif @tab_id!=0 && params[:status]=='All' && params[:start_date] && params[:end_date]
      @customers = Servey.where("tab_id = ? and created_at >= ? and created_at <= ?", @tab_id, @start_date, @end_date)

   elsif @tab_id==0 && @status!='All'
     @customers = Servey.joins(:customer).where('serveys.created_at >= ? and serveys.created_at <= ? and customers.status = ? ', Date.today-60, Date.today, @status)

   else
     @customers = Servey.where("created_at >= ? and created_at <= ?", @start_date, @end_date)
   end

    respond_to do |format|
      format.html
      format.xls { render xlsx: :index, filename: "my_items_doc" }
    end
 end
end
