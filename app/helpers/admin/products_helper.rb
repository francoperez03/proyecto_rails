module Admin::ProductsHelper
	def marca_options(marcas)
		marcas.map { |marca| [marca.nombre, marca.id]  }	
	end
end
