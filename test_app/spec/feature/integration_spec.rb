# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid Title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: '20'
    fill_in 'Published date', with: '2/2/2022'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid Author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: '20'
    fill_in 'Published date', with: '2/2/2022'
    click_on 'Create Book'
    visit books_path
    click_on 'Show'
    expect(page).to have_content('J. K. Rowling')
  end

  scenario 'valid Price' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: '20'
    fill_in 'Published date', with: '2/2/2022'
    click_on 'Create Book'
    visit books_path
    click_on 'Show'
    expect(page).to have_content('20')
  end

  scenario 'valid Publication Date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: '20'
    fill_in 'Published date', with: '2/2/2022'
    click_on 'Create Book'
    visit books_path
    click_on 'Show'
    expect(page).to have_content('2022-02-02')
  end
end
