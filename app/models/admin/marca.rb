class Admin::Marca < ActiveRecord::Base
	has_many :products
	alidates :nombre , presence: {message: " no fue ingresado"}
end
