Rails.application.routes.draw do
  resouces :songs, only: [:index, :new, :create, :edit, :update, :destroy]
end
