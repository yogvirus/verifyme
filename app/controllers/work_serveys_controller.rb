class WorkServeysController < ApplicationController

  def new 
   @business = Business.find(params[:customer_business_id])
   @work_servey = WorkServey.new
   @business_documents = @work_servey.business_documents.build
  end

  def create
   @work_servey = WorkServey.create(params[:work_servey])

    respond_to do |format|
      if @work_servey.save
         @work_servey.business.progress!
        format.html { redirect_to root_url, notice: 'Customers Co-applicants business Servey successfully Done.' }
        format.json { render json: @servey, status: :created, location: @servey }
      else
        format.html { render action: "new" }
        format.json { render json: @servey.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
   @work_servey = WorkServey.find(params[:id])
  end

  def edit
   @business = Business.find(params[:business_id])
   @work_servey = WorkServey.find(params[:id])
   @application_ref_no = @work_servey.business.application_ref_no
  end


  def update
   @work_servey = WorkServey.find(params[:id])

    respond_to do |format|
     if @work_servey.update_attributes(params[:work_servey])
        format.html { redirect_to @work_servey.business, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @work_servey.errors, status: :unprocessable_entity }
      end
    end
  end


end

