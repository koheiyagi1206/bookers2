class UsersController < ApplicationController

  def index
    @book = Book.new

    @user = User.find(current_user.id)
    @users = User.all
  end

end
