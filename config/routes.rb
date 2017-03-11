Rails.application.routes.draw do

  scope module: 'api' do
    namespace :v1 do
      resources :jobs, only: [:index, :create] do
      	patch :activate
      end
      get 'category/:id', to: 'categories#percentege'
    end
  end

end
