require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the anagramification path', {:type => :feature}) do
  it('process a target word and a list of words, and returns the anagrams') do
    visit('/')
    fill_in('target', :with => 'cat')
    fill_in('possible_anagrams', :with => '["tac", "dog"]')
    click_button('Anagramify!')
    expect(page).to have_content('Your anagrams are: tac')
  end
end
