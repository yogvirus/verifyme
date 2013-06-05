class CoApplicantServeysController < InheritedResources::Base

  def index
  end

  def new
   @co_applicant = CoApplicant.find(params[:customer_co_applicant_id])
   @co_applicant_servey = CoApplicantServey.new
   @customer_documents = @co_applicant.co_applicant_documents.build
  end
 
  def create
    @servey = CoApplicantServey.new(params[:co_applicant_servey])

    respond_to do |format|
      if @servey.save
         @servey.co_applicant.progress!
        format.html { redirect_to root_url, notice: 'Customer Servey successfully Done.' }
        format.json { render json: @servey, status: :created, location: @servey }
      else
        format.html { render action: "new" }
        format.json { render json: @servey.errors, status: :unprocessable_entity }
      end
    end
  end



end
