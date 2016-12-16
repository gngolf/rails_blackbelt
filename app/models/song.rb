class Song < ApplicationRecord
  belongs_to :user
  has_many :users, through: :adds, source: :user
  has_many :adds
end
