Rails.application.routes.draw do
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  devise_for :users

  resources :pieces do
    resources :comments, only: [:new, :create, :edit, :update, :destroy]

    collection do
      post :confirm
    end
  end

  resources :users, only: [:index, :edit, :update, :destroy]
end
