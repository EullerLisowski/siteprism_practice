class Category < SitePrism::Page
  section :header, Header, '#block_top_menu'
  section :product_grid, ProductGrid, '.product_list.grid.row'
  section :cart_modal, CartModal, '#layer_cart > div.clearfix'
end