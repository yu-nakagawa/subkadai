class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build
  end
end
