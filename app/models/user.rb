class User < ActiveRecord::Base
	attr_accessor :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
validate :validate_username

def validate_username
  if User.where(email: username).exists?
    errors.add(:username, :invalid)
  end
end
def self.find_first_by_auth_conditions(warden_conditions)
  conditions = warden_conditions.dup
  if login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  else
    if conditions[:username].nil?
      where(conditions).first
    else
      where(username: conditions[:username]).first
    end
  end
end
mount_uploader :avatar, ImageUploader
  def active_for_authentication?
    #remember to call the super
    #then put our own check to determine "active" state using 
    #our own "is_active" column
    super and self.status?
  end
 private    
def password_required?
  new_record? ? super : false
end
end
