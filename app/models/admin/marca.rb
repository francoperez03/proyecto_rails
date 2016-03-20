class Admin::Marca < ActiveRecord::Base
	has_many :productos
end
