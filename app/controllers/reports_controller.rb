class ReportsController < ApplicationController
include ApplicationHelper
include ReportsHelper
  def index
   @start_date = params[:start_date] || Date.today-5
   @end_date = params[:end_date] || Date.today
   if params[:start_date] && params[:end_date]
     @customers = all_reports(@start_date, @end_date)
    respond_to do |format|
      format.html
      format.xls { render xlsx: :index, filename: "my_items_doc" }
    end
  end
 end
end
