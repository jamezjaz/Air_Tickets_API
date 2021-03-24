class User < ApplicationRecord
  #Validations
  has_many :airlines

  validates_presence_of :name, :email, :password_digest, :username, length: { minimum: 3 }
  validates :email, uniqueness: true
  validates :username, uniqueness: { case_sensitive: false }

  validates :password, :presence => true, :length => { :within => 6..40 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  #encrypt password
  has_secure_password
end
