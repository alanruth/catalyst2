class Catalyst < ActiveRecord::Base

	validates :first_name, presence: true, length: {maximum: 50}
	validates :last_name, presence: true, length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}

	SALESFORCE_PATH = "https://www.salesforce.com/servlet/servlet.WebToLead?encoding=UTF-8"

	after_create :send_to_salesforce

	def send_to_salesforce
		begin
			response = RestClient.post SALESFORCE_PATH, :first_name => first_name, :last_name => last_name, :oid => "00Di0000000dKbA", :retURL => "http://www.procatalystgroup.com/thank_you", :email => email, :message => comments, :URL => website, :phone => phone
			self.sent_to_sales_force = response.code == 200
		rescue => e
			response.code
		end
	end

end
