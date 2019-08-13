class MicropostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy, :edit]
  
  def index
    @microposts=Micropost.all
    @micropost=Micropost.new
  end

  def show
     @micropost = Micropost.find(params[:id])
    @comments = @micropost.comments
    @comment = Comment.new
    #@comments = Comment.all
    #@comment = current_user.comments.build
  end
  def edit
    @micropost = Micropost.find(params[:id])
  end
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :img)
    end
    
  
end