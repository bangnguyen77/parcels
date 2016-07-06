require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)

describe('the parcels path', {:type => :feature}) do
  it('returns the shipping cost of a parcel depending on volume, weigth and distance') do
    visit('/')
    fill_in('height', :with =>5)
    fill_in('width', :with =>6)
    fill_in('depth', :with =>7)
    fill_in('weight', :with =>4)
    fill_in('distance', :with =>100)
    click_button("Submit")
    expect(page).to have_content(117)
  end
end
