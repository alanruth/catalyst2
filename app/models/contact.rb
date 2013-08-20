class Contact < ActiveRecord::Base
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,  presence: true, format: { with: VALID_EMAIL_REGEX }
	validates :message,  presence: true, length: { maximum: 1000 }

	require "addressable/uri"
	SALESFORCE_PATH = "https://www.salesforce.com/servlet/servlet.WebToLead?encoding=UTF-8"
	after_create :send_to_salesforce

	def send_to_salesforce
			begin
				response = Curl::Easy.http_post(SALESFORCE_PATH, attr_for_sf)
				self.sent_to_sales_force = response.response_code == 200
				save
			rescue
				# Send notification of error in contacting Salesforce
			end
		end


	protected
	def attr_for_sf
		to_query_string({
				                "first_name" => first_name,
				                "last_name" => last_name,
				                "email" => email,
				                "description" => message,
				                "oid" => "00Di0000000dKbA",
				                "retURL" => "http://www.procatalystgroup.com/thankyou"
		                })
	end

	def to_query_string(val)
		uri = Addressable::URI.new
		uri.query_values = val
		uri.query
	end

end


