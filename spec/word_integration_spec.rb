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

  describe('form can add a new word', {:type => :feature}) do
    it('creates a new word on the /words page') do
      visit('/words')
      click_on('Add a new word')
      fill_in('word_name', :with => 'cupcake')
      click_on('Add a new word')
      expect(page).to have_content('cupcake') 
    end
  end

  describe('allow user to edit a word', {:type => :feature}) do
    it('creates a new view when edit word is clicked on') do
      visit('/words')
      click_on('Add a new word')
      fill_in('word_name', :with => 'sky')
      click_on('Add a new word')
      click_on('sky')
      click_on('Edit word')
      expect(page).to have_content('Change')
    end
  end

  describe('deletes a word', {:type => :feature}) do
    it('deletes a word') do
      visit('/words')
      click_on('Add a new word')
      fill_in('word_name', :with => 'sleep')
      click_on('Add a new word')
      click_on('sleep')
      click_on('Edit word')
      click_on('Delete word')
      expect(page).to have_content('There aren\'t any')
    end
  end

end