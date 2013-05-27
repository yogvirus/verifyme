class WorkServeysController < ApplicationController

  def new 
   @business = Business.find(params[:customer_business_id])
   @work_servey = WorkServey.new
   @business_documents = @work_servey.business_documents.build
  end

  def create
   @work_servey = WorkServey.create(params[:work_servey])
   if @work_servey.save
         @work_servey.business.progress!
        redirect_to root_url, :notice=> 'Customer Servey successfully Done.' 
   end
  end

  def show
   @work_servey = WorkServey.find(params[:id])
  end


end

