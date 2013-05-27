class HeadshotDemoController < ApplicationController
  helper :headshot

  def index
   @head = HeadshotPhoto.all
  end

end
