Rails.application.routes.draw do
  get 'static_page/profile'

devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' } 
 resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'

  get 'profile'  => 'static_page#profile'

end
