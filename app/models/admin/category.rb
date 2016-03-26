class Admin::Category < ActiveRecord::Base
	has_many :admin_products
	validates :nombre , presence: {message: " no fue ingresado"}
end
