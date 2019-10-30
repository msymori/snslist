class NicesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.nice(micropost)
    url = params[:url]
    flash[:success] = '投稿にいいねしました。'
    redirect_to url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unnice(micropost)
    flash[:success] = '投稿のいいねを削除しました。'
    url = params[:url]
    redirect_to url
  end
end
