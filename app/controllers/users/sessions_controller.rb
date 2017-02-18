class Users::SessionsController < Devise::SessionsController
  def new
    super
    render layout: 'another_layout'
  end
end
