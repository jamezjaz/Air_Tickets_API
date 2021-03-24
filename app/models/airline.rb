class Airline < ApplicationRecord
  belongs_to :user, optional: true
  has_many :tickets
  mount_uploader :image, ImageUploader

  validates_presence_of :name
  validates_presence_of :price
  validates_presence_of :location
  validates_presence_of :description
end
