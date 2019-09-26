Given('that I access the home page') do
  @app.home.load
end

Given('I go to the products {string} session') do |session|
  @app.home.header.find_in_list_category(session).click
  expect(@app.home.title.downcase.include?(session.downcase)).to be_truthy
end
