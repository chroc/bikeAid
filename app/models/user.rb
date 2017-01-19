class User < ApplicationRecord

  has_secure_password

  has_many :incident_reports

  validates :password, length: { minimum: 10 }, on: :create
  # validates :password, confirmation: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, format: {
    with: VALID_EMAIL_REGEX,
    message: "invalid email"
  }

  before_validation :set_super_user

  private
  def set_super_user
    if self.super_user.nil?
      self.super_user = false
    end
  end

end
