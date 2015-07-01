class HomePageController < ApplicationController
  def home
    @web = Web.last
  end
end
