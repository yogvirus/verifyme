class ReportsController < ApplicationController
include ApplicationHelper
  def index
   @start_date = params[:start_date]
   @end_date = params[:end_date]
   #@status = 'submitted'
   if params[:start_date] && params[:end_date] 
     @data = Customer.where("created_at >= ? and created_at <= ?", @start_date, @end_date) 
   end
  end
end
