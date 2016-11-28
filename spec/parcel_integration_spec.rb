require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it ("returns cost to ship") do
    visit('/')
    fill_in('width', :with => '2')
    fill_in('height', :with => '20')
    fill_in('length', :with => '2')
    fill_in('weight', :with => '2')
    click_button('Go')
    expect(page).to have_content(8.0)
    end
end
