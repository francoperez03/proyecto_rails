class Admin::Category < ActiveRecord::Base
	has_many :products
	validates :nombre , presence: {message: " no fue ingresado"}
end
