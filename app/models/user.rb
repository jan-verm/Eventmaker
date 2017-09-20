class User < ActiveRecord::Base
  validates :email, presence: true
  validates :name, presence: true
  validates :birth_date, presence: true

  has_many :participants, dependent: :destroy
  has_many :events, through: :participants
  has_many :comments, dependent: :destroy
end
