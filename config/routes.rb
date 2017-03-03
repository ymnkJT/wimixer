Rails.application.routes.draw do
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  devise_for :users

  resources :pieces do
    resources :comments

    collection do
      post :confirm
    end
  end

  resources :users, only: [:index, :edit, :update, :destroy]
end
