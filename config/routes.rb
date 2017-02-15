Rails.application.routes.draw do
  resouces :pieces, only: [:index, :new, :create, :edit, :update, :destroy]
end
