ActiveAdmin.register User do

index do
    column :email
    column :role
    default_actions
  end  

form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :role, :collection=>User::ROLES, :as => :select
      f.input :name, :required => true
      f.input :tab_id, :collection => Tab.all, :as=>:select 
    end
    f.buttons
  end
  
end
