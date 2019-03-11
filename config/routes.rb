Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # You can have the root of your site routed with "root"
  resources :loans, only: [:new, :index, :create] do
    member do
<<<<<<< HEAD
      get 'generate_amortization_schedule'
=======
      get 'calculate_amortization_schedule'
>>>>>>> b4be61b0148bdb2901ddfe4f8578c9840eb76389
    end
  end

  root 'loans#new'

end
