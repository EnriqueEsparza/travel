require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the Travel route path', {:type => :feature}) do
  it('takes in travel destinations and adds them to travel list') do
    visit('/')
    fill_in("destination", :with => "Chicago")
    click_button('Add Travel Destination')
    expect(page).to have_content("Chicago")
  end
end
