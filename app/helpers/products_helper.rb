module ProductsHelper
	def marca_options(marcas)
		marcas.map { |marca| [marca.nombre, marca.id]  }	
	end
	def category_options(categories)
		categories.map { |category| [category.nombre, category.id]  }	
	end
end
