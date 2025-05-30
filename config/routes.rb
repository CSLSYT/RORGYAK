Rails.application.routes.draw do
  get '/kp/reference/page/:page', to: 'kp#reference', as: :reference_page
  get '/kp/reference', to: 'kp#reference'
  resources :works
  get "kp/home"
  get "kp/contact"
  get "kp/joinourteam"
  resources :job_applications, only: [:new, :create]
  get 'thanks', to: 'pages#thanks'
  mount RailsAdmin::Engine => '/kp/admin', as: 'rails_admin'
  get 'kp/about', to: 'kp#about'
  get 'kp/grants', to: 'kp#grants'

  post "contact/create", to: 'contact#create', as: 'send_contact'
  get "contact/index", to: 'contact#index', as: 'contacts'
  get "contact/show/:id", to: 'contact#show', as: 'contact'

  post "job_application/create", to: 'job_application#create', as: 'send_job_application'
  get "job_application/index", to: 'job_application#index', as: 'job_applications_index'
  get "job_application/show/:id", to: 'job_application#show', as: 'job_application_show'

  resources :contacts, only: [:index, :create]
  resources :messages, only: [:new, :create]
  resources :job_applications, only: [:new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
