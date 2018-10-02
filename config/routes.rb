Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # front end will serve new/edit pages
  
  namespace :api do 
    resources :airplanes, except: [:new, :edit]
  end

end
