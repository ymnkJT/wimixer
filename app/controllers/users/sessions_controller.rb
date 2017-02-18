class Users::SessionsController < Divise::SessionsController
  def new
    render layout: false
  end
end
