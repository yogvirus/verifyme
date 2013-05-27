class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
   attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :tab_id, :name 
                   
  # attr_accessible :title, :body
  
  has_one :profile
  belongs_to :tab


  #scope :with_role, lambda { |role| {:conditions => "roles_mask & #{2**ROLES.index(role.to_s)} > 0 "} }



  ROLES = %w[super_user tab_user]

  #def role_symbols
    #roles.map do |role|
      #role.name.underscore.to_sym
    #end
  #end



#def role_symbols
  #roles.map(&:to_sym)
#end



end
