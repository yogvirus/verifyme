class SearchesController < ApplicationController

  def index
    @business = Business.find(:all)
    @co_applicants = CoApplicant.find(:all)
    @co_app_business = CoApplicantBusiness.find(:all)
    @customers = Customer.order("status ASC").find(:all)
    @all_customers = (@business + @co_applicants + @co_app_business + @customers).sort_by {|a| a.created_at}.reverse
    @cust  = @all_customers.search(params[:search])
    respond_to do |format|
      format.json { render json: @all_customers }
    end
  end

end
