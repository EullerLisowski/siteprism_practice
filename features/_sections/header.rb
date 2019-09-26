class Header < SitePrism::Section
  elements :list_category,
           'ul.sf-menu.clearfix.menu-content.sf-js-enabled.sf-arrows > li'

  def find_in_list_category(category)
    list_category.find { |item| item.text.downcase == category.downcase }
  end
end
