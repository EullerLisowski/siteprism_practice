class ProductGrid < SitePrism::Section
  elements :product_itens, 'ul.product_list.grid.row > li'

  def find_product(name = nil)
    return product_itens.first unless name

    product_itens.select do |item|
      item.find('h5').text.downcase == name.downcase
    end
  end

  def add_to_cart(product_name = nil)
    product = find_product(product_name)
    product.hover
    product.find(".button-container > a[title='Add to cart']")

  end
end
