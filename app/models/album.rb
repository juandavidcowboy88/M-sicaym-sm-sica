class Album < ApplicationRecord
  belongs_to :artists
  has_many :songs
end
