class User < ApplicationRecord

  # has_secure_password

  # validates :password, confirmation: true

  has_many :incident_reports

end
