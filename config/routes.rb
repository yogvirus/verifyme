EVerification::Application.routes.draw do

  root :to => 'dashboards#index'

  get "help_topics/" => 'help_topics#index', :as => :help_topics

  get "help_topics/how-to-make-applicant" => 'help_topics#make_customer', :as => :make_customer
  get "help_topics/how-to-make-co-applicant" => 'help_topics#make_co_applicant', :as => :make_co_applicant
  #get "/tabs/" => "tabs#tab_status", :as => :tab_status
  #get "help_topics/make_customer" => 'help_topics#make_customer', :as => :make_customer
  #get "help_topics/make_customer" => 'help_topics#make_customer', :as => :make_customer
  #get "help_topics/make_customer" => 'help_topics#make_customer', :as => :make_customer
  #get "help_topics/make_customer" => 'help_topics#make_customer', :as => :make_customer

  resources :reports do
   get :generate_report
  end
  resources :co_applicant_serveys

  get "co_applicant_businesses/index"
  get "reports/to_excel" => "reports#to_excel", :as => :excel

  get "dashboards/index"
  get "headshot_demo/index"
  get "customers/cust_residential"
  get "customers/cust_business"
  get "customers/cust_pending"
  get "customers/cust_in_progress"
  get "customers/cust_completed"
  post "headshot/capture" => 'headshot#capture', :as => :headshot_capture

  resources :searches
  resources :work_serveys
  resources :webcam_pictures
  resources :customers
  resources :tabs do
   get :tab_status
  end
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
  resources :customer_verifications
  resources :business_verifications
  resources :co_applicant_verifications
  resources :client_verifications
  resources :serveys

  resources :customers do
    member do
     post :customer_verification
     get :customer_verification
     get :print_customer
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
