require 'rails_helper'

describe 'book listing page' do
  context 'no books' do
    it 'tells me there a no books' do
      visit '/books'
      expect(page).to have_content 'No books yet'
    end
  end

  context 'are books' do
    before do
      Book.create(title: 'Snowcrash', author: 'Stephenson')
    end

    it 'should show the title' do
      visit '/books'
      expect(page).to have_content 'Snowcrash'
    end

    it 'should show the author' do
      visit '/books'
      expect(page).to have_content 'Stephenson'
    end

  end
end
