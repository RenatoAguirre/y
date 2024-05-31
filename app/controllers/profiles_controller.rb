class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @comments = Comment.joins(:post).where(:posts => { :user_id => @user.id })
  end
end