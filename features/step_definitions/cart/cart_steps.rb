Then('I should see the product on my cart') do
  interacted_product_name = @app.category.product_grid.interacted_product_name
  @app.cart.load
  @app.cart.product_in_cart_summary?(interacted_product_name)
end
