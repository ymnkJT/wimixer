Rails.application.routes.draw do
  devise_for :users

  resources :pieces, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection do
      post :confirm
    end
  end
end
