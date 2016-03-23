class Admin::Marca < ActiveRecord::Base
	has_many :products
end
