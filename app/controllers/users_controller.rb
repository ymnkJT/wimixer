class UsersController < ApplicationController
  def index
    @comments = current_user.comments
  end
end
