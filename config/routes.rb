Rails.application.routes.draw do
  resources :pieces, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection do
      post :confirm
    end
  end
end
