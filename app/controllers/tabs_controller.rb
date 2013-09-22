class TabsController < ApplicationController
  before_filter :authenticate_user!
  include ApplicationHelper
  include TabsHelper
  include DashboardsHelper

  def index
    @tabs = Tab.all
  end

  def show
    @tab = Tab.find(params[:id])
    @tab_data_customer = CustomerVerification.find_all_by_tab_id(@tab)
    @tab_data_client = ClientVerification.find_all_by_tab_id(@tab)
    @tab_data_coapp = CoApplicantVerification.find_all_by_tab_id(@tab)
    @tab_data_business = BusinessVerification.find_all_by_tab_id(@tab)
  end

  def new
    @tab = Tab.new
  end

  def create
    @tab = Tab.new(params[:tab])
    @tab.mac_address = Mac.addr
    if @tab.save
      redirect_to @tab, :notice => "Successfully created tab."
    else
      render :action => 'new'
    end
  end

  def edit
    @tab = Tab.find(params[:id])
  end

  def update
    @tab = Tab.find(params[:id])
    @tab.mac_address = Mac.addr
    if @tab.update_attributes(params[:tab])
      redirect_to @tab, :notice  => "Successfully updated tab."
    else
      render :action => 'edit'
    end
  end

  def tab_status
    @tab_id = Tab.find(params[:tab_id])
    @data = CustomerVerification.find_all_by_tab_id(@tab_id)
  end

  def destroy
    @tab = Tab.find(params[:id])
    @tab.destroy
    redirect_to tabs_url, :notice => "Successfully destroyed tab."
  end
end
