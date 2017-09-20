class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :start, presence: true
  validates :end, presence: true

  has_many :participants, dependent: :destroy
  has_many :users, through: :participants
  has_many :comments, dependent: :destroy
end
