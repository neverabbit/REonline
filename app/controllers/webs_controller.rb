class WebsController < ApplicationController
  
  def show
    @web = Web.find(params[:id])
  end
  
  def new
    @web = Web.new
  end
  
  def create
    @web = Web.new(web_params)
    if @web.save 
      redirect_to @web
    else
      render 'new'
    end
  end
  
  def index
    @webs = Web.order('id').reverse_order.paginate(page: params[:page], per_page: 1)
  end
  
  private
  
    def web_params
      params.require(:web).permit(:name, :address, :image_big, :description)
    end
end
