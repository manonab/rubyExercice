Rails.application.routes.draw do
  # get 'dummy/index'
  match ':controller(/:action/(/:id(.:format)))', :via => :get
  root 'bordel#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
