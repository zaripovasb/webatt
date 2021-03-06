Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'users/index'
 root "pages#index"
 get '/about', to:"pages#about"
 get '/contact', to:"pages#contact"



  get '/signup', to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'login/teacher', to: 'users#show_t'
  get '/login/student', to: 'users#show_s'
   resources :users

end
