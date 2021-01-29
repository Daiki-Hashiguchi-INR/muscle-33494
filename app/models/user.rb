class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :muscles
  has_many :comments
  has_many :favorites

  validates :nickname, presence: true
  validates :profile , presence: true
  validates :goal    , presence: true
end
