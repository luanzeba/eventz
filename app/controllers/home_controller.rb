class HomeController < ApplicationController
  def index
    flash.now[:notice] = "Welcome to the Sample App!"
    flash.now[:alert] = "Something went wrong"
  end
end
