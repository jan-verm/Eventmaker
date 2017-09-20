class Comment < ActiveRecord::Base
  validates :text, presence: true
  validates :date, presence: true
  validates :user, presence: true

  belongs_to :event
  belongs_to :user
end
