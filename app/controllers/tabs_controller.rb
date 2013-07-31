class TabsController < ApplicationController
  include ApplicationHelper
  
  
  def index
    @tabs = Tab.all
  end

  def show
    @tab = Tab.find(params[:id])
    @tab_data = CustomerVerification.find_all_by_tab_id(@tab)
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

  def destroy
    @tab = Tab.find(params[:id])
    @tab.destroy
    redirect_to tabs_url, :notice => "Successfully destroyed tab."
  end
end
