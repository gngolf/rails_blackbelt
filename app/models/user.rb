class User < ApplicationRecord
  has_secure_password
  has_many :songs
  has_many :songs_added, through: :adds, source: :songs
end
