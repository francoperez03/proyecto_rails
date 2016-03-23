class Admin::Category < ActiveRecord::Base
	has_many :products
end
