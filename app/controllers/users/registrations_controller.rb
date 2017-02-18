class Users::RegistrationsController < Divise::RegistrationsController
  def new
    render layout: false
  end
end
