class User < ApplicationRecord

  has_many :events
  
  validates :email, confirmation: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :first_name, format: {with: /\A[a-zA-Z0-9 ]+\z/}, confirmation: true 
end
