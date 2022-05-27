class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, length: { minimum: 3}
  validates :name, presence: true, length: { minimum: 3}
  has_many :tweets
  has_many :comments
  has_many :friend_requests
  has_many :requests, foreign_key: 'request_id', class_name: 'FriendRequest'
end
