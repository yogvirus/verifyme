class DashboardsController < ApplicationController
  before_filter :authenticate_user!
  def index
   @customers = Customer.all
   @pending = Customer.find_all_by_status('submitted')
   @in_progress = Customer.find_all_by_status('awaiting_to_get_verified')
   @completed = Customer.find_all_by_status('verified')
  end
end
