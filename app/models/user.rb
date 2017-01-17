class User < ApplicationRecord

  has_secure_password

  has_many :incident_reports

  validates :password, length: { minimum: 10 }
  # validates :password, confirmation: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, format: {
    with: VALID_EMAIL_REGEX,
    message: "invalid email"
  }

end
