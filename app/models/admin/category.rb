class Admin::Category < ActiveRecord::Base
	has_many :productos
end
