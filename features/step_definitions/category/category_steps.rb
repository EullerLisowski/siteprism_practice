When('I add a product to my cart') do
  @app.category.product_grid.select_product
  @app.category.product_grid.add_to_cart
  expect(
    @app
    .category
    .cart_modal
    .has_h2_product_successfully_added?
  ).to be_truthy
end
