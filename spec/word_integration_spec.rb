require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe '#Word' do

  before(:each) do
    Word.clear()
  end

  describe('create an initial path', {:type => :feature}) do
    it('shows homepage') do
      visit('/')
      expect(page).to have_content('List')
    end
  end
end