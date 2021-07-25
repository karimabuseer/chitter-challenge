require_relative '../../app.rb'

RSpec.feature 'Chitter' do
  it 'returns a welcome message on home page' do
    visit '/'
    expect(page).to have_text("Welcome to Chitter!")
  end
end