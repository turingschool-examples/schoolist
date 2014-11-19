Rails.application.routes.draw do
  namespace :v1 do
    resources :counties, except: [:new, :edit], defaults: { format: 'json' }
  end
end
