class UsersController < ApplicationController
  def index
    @comments = current_user.comments
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
