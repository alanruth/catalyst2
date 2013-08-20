class Contact < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 100 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,  presence: true, format: { with: VALID_EMAIL_REGEX }
	validates :subject,  presence: true, length: { maximum: 100 }
	validates :message,  presence: true, length: { maximum: 100 }
end
