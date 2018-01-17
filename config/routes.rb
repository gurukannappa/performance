Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :nodb , :only => :none do 
    collection do 
      get :just_json
    end
  end
end
