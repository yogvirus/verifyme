EVerification::Application.routes.draw do

  resources :reports do
   get :generate_report
  end
  resources :co_applicant_serveys

  get "co_applicant_businesses/index"
  get "reports/to_excel" => "reports#to_excel", :as => :excel
  root :to => 'dashboards#index'
  get "dashboards/index"
  get "headshot_demo/index"
  get "customers/cust_residential"
  get "customers/cust_business"
  get "customers/cust_pending"
  get "customers/cust_in_progress"
  get "customers/cust_completed"
  post "headshot/capture" => 'headshot#capture', :as => :headshot_capture

  resources :work_serveys  
  resources :webcam_pictures
  resources :customers
  resources :tabs
  resources :profiles
  resources :customer_documents

  resources :co_applicant_businesses do 
   member do
     post :business_verification
     get :business_verification
     post :accept
     get :accept
     post :re_indicated
     get :re_indicated
   end
  end

  resources :co_applicants do 
    member do
     post :co_applicant_verification
     get :co_applicant_verification
     #post :co_applicant_work_servey_verification
     #get :co_applicant_work_servey_verification
     post :accept
     get :accept
     post :re_indicated
     get :re_indicated
    end

  end
  resources :co_applicant_work_details

  resources :serveys
  resources :customers do 
    member do
     post :customer_verification
     get :customer_verification
     post :customer_work_servey_verification
     get :customer_work_servey_verification
     post :accept
     get :accept
     post :re_indicated
     get :re_indicated
    end
  end
  resources :businesses do 
   member do
     post :business_verification
     get :business_verification
     post :accept
     get :accept
     post :re_indicated
     get :re_indicated
   end
  end

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users, :controllers => { :registrations => "registrations" } do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end 

end
