class Users::RegistrationsController < Devise::RegistrationsController
  def new
    super
    render layout: 'another_layout'
  end
end
