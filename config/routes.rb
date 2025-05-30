Rails.application.routes.draw do
  resources :job_applications, only: [:new, :create]
  get 'thanks', to: 'pages#thanks'
  get 'reference', to: 'kp#reference'
  get 'kp/joinourteam', to: 'kp#joinourteam'
end
