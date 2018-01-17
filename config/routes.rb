Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :nodb , :only => :none do 
    collection do 
      get :just_json
      get :one_second_json
      get :two_second_json
      get :three_second_json
      get :four_second_json
      get :five_second_json
      get :thirty_second_json
      get :one_minute_json
    end

    member do 
      get :custom_second_json
    end
  end
end
