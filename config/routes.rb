Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'top/login'
    post 'top/login'
    root 'top#main'
    get 'top/logout'
    post 'top/logput'
end
