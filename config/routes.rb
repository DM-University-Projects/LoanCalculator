Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # You can have the root of your site routed with "root"
  resources :loans, only: [:new, :index, :create] do
    member do
      get 'calculate_amortization_schedule'
    end
  end

  root 'loans#new'

end
