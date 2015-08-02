class HomePageController < ApplicationController
  def home
    # if id = params[:id] and Web.find(id-1).exist?
#       @web = Web.find(id-1)
#     else
      @web = Web.last
    # end
  end
  

  
  private
  
    def web_params
      params.require(:web).permit(:id)
    end
    
end
