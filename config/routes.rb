Rails.application.routes.draw do
# rootをログイン画面に設定
  devise_scope :user do
    root "users/sessions#new"
  end

  devise_for :users, :controllers => {
    sessions: 'users/sessions'
  }
  resources :users, only:[:show]
  resources :habits, only:[:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
