class Cart < SitePrism::Page
  set_url '/index.php?controller=order'
  elements :cart_summary, '#cart_summary > tbody > tr'

  def find_product_in_cart_summary(name = nil)
    return cart_summary.first unless name

    cart_summary.select do |item|
      item.find('td.cart_description > p').text.downcase == name.downcase
    end
  end

  def product_in_cart_summary?(name)
    # !!find_product_in_cart_summary(name) is a rubocop offense
    !find_product_in_cart_summary(name).nil?
  end
end
