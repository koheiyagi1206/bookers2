class UsersController < ApplicationController

  def index
    @book = Book.new

    @user_myself = User.find(current_user.id)
    @users = User.all
  end

end
