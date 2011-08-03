class UsersController < ApplicationController
  def new
    @title_tag = "Sign Up"
  end
  
  def show
    @user = User.find(params[:id])
    @title_tag = @user.name
  end
  
end