require_relative '../../app.rb'

RSpec.feature 'Chitter' do
  it 'returns a welcome message on home page' do
    visit '/'
    expect(page).to have_text("Welcome to Chitter!")
  end

  it 'can input a message to chitter that is later displated' do
    visit '/'
    fill_in('peep', with:'This is a test peep.')
    click_button('Add Peep')
    expect(page).to have_text("This is a test peep.")
  end
end