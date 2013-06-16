class BusinessesController < InheritedResources::Base

   before_filter :authenticate_user!
   load_and_authorize_resource

 def create
  @business = Business.create(params[:business])
   if @business.save
    redirect_to @business.customer, :motice => "Details Added."
   else
    redirect_to @business.customer, :motice => "Something went wrong , please contact the administrator!."
 end
 end

 def show
  @business = Business.find(params[:id])
 end

 def business_verification
   @business = Business.find(params[:business_id])  
   @tab = Tab.find(:all) 
   @verification = BusinessVerification.create(params[:business_verification])
    @verification.user_id = current_user.id
    @verification.business_id = @business.id

     if @verification.save
        @verification.business.submit!
        @user = User.find_by_role('super_user')
        #VerificationMailer.verification_confirmation(@user).deliver
        redirect_to @business, :notice =>"record has been send for verification"
    end
  end

  def accept
    @business = Business.find(params[:business_id])
    @business.accept!

    respond_to do |format|
       if @business.update_attributes(params[:business])
         format.html { redirect_to root_url, notice: 'Status was successfully updated.' }
         format.json { head :ok }
       else
         format.html { render action: "edit" }
         format.json { render json: @business.errors, status: :unprocessable_entity }
       end
     end
  end

  def edit
   @customer = Customer.find(params[:customer_id])
   @business = Business.find(params[:id])
   @application_ref_no = @customer.application_ref_no
  end


  def re_indicated
    @business = Business.find(params[:business_id])
    @business.re_indicated!

    respond_to do |format|
       if @business.update_attributes(params[:business])
         format.html { redirect_to root_url, notice: 'Status was successfully updated.' }
         format.json { head :ok }
       else
         format.html { render action: "edit" }
         format.json { render json: @business.errors, status: :unprocessable_entity }
       end
     end
  end



end
