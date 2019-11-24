class UsersController < ApplicationController
  def show
  	@user = User.find_by_id(params[:id])
  	@articles = Article.all.where("user_id =?", User.find_by_id(params[:id]))
  end

  def index 
  	@users = User.all 
  end

end
