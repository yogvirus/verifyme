class CoApplicantWorkDetailsController < ApplicationController

  def new 
   @co_applicant_business = CoApplicantBusiness.find(params[:customer_co_applicant_id])
   @co_applicant_work_detail = CoApplicantWorkDetail.new
   @co_applicant_business_document = @co_applicant_work_detail.co_applicant_business_documents.build
  end

  def create
   @co_applicant_work_detail = CoApplicantWorkDetail.create(params[:co_applicant_work_detail])
   if @co_applicant_work_detail.save
      @co_applicant_work_detail.co_applicant_business.progress!
      redirect_to root_url, notice: 'Customer Servey successfully Done.'
   end
  end

  def edit
   @co_applicant_business = CoApplicantBusiness.find(params[:co_applicant_business_id]) 
   @co_applicant_work_detail = CoApplicantWorkDetail.find(params[:id])
  end


  def update
    @co_applicant_work_servey = CoApplicantWorkDetail.find(params[:id])
    
    respond_to do |format|
     if @co_applicant_work_servey.update_attributes(params[:co_applicant_work_detail])
        format.html { redirect_to @co_applicant_work_servey.co_applicant_business, notice: 'successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @co_applicant_work_servey.errors, status: :unprocessable_entity }
      end
    end
end

end
