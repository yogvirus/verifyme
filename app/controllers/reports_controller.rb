class ReportsController < ApplicationController
include ApplicationHelper
  def index
   @start_date = params[:start_date]
   @end_date = params[:end_date]
   @status_1 = 'submitted'
   @status_2 = 'verified'
   if params[:start_date] && params[:end_date] && @status_1
     @data1 = Customer.where("status=? and created_at >= ? and created_at <= ?",  @status_1, @start_date, @end_date) 
logger.info "@@@@@@@@1@@@@@"+@data1.inspect
   end

   if params[:start_date] && params[:end_date] && @status_2
     @data2 = Customer.where("status=? and created_at >= ? and created_at <= ?",  @status_2, @start_date, @end_date) 
logger.info "@@@@@@@@@2@@@@"+@data2.inspect
   end

end
end
