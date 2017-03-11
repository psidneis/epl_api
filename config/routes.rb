Rails.application.routes.draw do

  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :jobs, only: [:index, :create] do
        	patch :activate
        end
      end
    end
  end

end
