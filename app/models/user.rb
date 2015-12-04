class User < ActiveRecord::Base
  has_many :statuses
  validates :first_name, :last_name, :profile_name, presence: true
  validates :profile_name, uniqueness: true

  # validates :profile_name, presence: true,
  #                          uniqueness: true,
  #                          format: {
  #                           with: /a-zA-Z0-9_-/,
  #                           message: 'Must be formatted correctly.'
  #                          }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessible :first_name, :last_name, :profile_name, :email, :password, :password_confirmation,
  #                 :remember_me
  def full_name
    first_name + ' ' + last_name
  end
end
