class ProductGrid < SitePrism::Section
  # Needed - Create a class variable or a method
  # that returns a string, otherwise, variables
  # won't be created not even throught def initialize
  @@button_add_to_cart = ".button-container > a[title='Add to cart']"
  @@interacted_product = ''
  elements :product_itens, 'ul.product_list.grid.row > li'

  def find_product(name = nil)
    return product_itens.first unless name

    product_itens.select do |item|
      item.find('h5').text.downcase == name.downcase
    end
  end

  def select_product(name = nil)
    @@interacted_product = find_product(name)
  end

  def add_to_cart
    @@interacted_product.hover
    @@interacted_product.find(@@button_add_to_cart).click
  end

  def interacted_product_name
    @@interacted_product.find('h5').text
  end
end
