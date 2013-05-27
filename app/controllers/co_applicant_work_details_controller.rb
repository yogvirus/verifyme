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


end
