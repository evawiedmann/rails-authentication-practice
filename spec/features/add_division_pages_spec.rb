require 'rails_helper'

describe('Create a division path', { :type => :feature } ) do
before(:each) do
  visit('/')
  find_link('Sign up').click
  fill_in('Email', :with => "abc@gmail.com")
  fill_in('Password', :with => 'test111')
  fill_in('Password confirmation', :with => 'test111')
  click_on('Sign up')
end

  it('creates a division and then goes to divisions page') do
    visit('/')
    click_on("View Current Divisions")
    click_on("Create new division")
    save_and_open_page
    fill_in('Name', :with => 'QC')
    click_on("Create Division")
    expect(page).to have_content('New Division successfully added!')
  end
end
