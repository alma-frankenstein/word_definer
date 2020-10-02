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

  describe('path to list and add words', {:type => :feature}) do
    it('adds a new word') do
      visit('/words')
      click_on('Add a new word')
      expect(page).to have_content("Add a new word") 
    end
  end

end