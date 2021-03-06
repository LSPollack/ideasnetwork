class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # Lisa: removed :recoverable from the below because "we don't want our apps sending emails for now" (source: classnotes) and :rememberable so that we don't get stuck as logged in

  devise :database_authenticatable, :registerable, :trackable, :validatable
  acts_as_voter
  
  has_many :ideas
  has_many :categories
  has_many :comments

  validates :email, presence: true
  validates :email, length: {minimum: 6}
  validates :email, uniqueness: true

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: {maximum: 30}

  validates :bio, presence: true
  validates :bio, length: {maximum: 1000}
  # validates :avatar, presence: true

  mount_uploader :user_image, UserImageUploader


  

 
  


  # This checks the user's role - as used by CanCanCan
  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

end
