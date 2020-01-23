require 'rails_helper'

describe('Create a employee path', { :type => :feature } ) do
  before(:each) do
    visit('/')
    find_link('Sign up').click
    fill_in('Email', :with => "abc@gmail.com")
    fill_in('Password', :with => 'test111')
    fill_in('Password confirmation', :with => 'test111')
    click_on('Sign up')
  end

  it('creates a division and then creates an employee') do
    visit('/')
    click_on("View Current Divisions")
    click_on("Create new division")
    fill_in('Name', :with => 'Qc')
    click_on("Create Division")
    find_link('Qc').click
    find_link("Add a employee").click
    save_and_open_page
    fill_in('Name', :with => 'Elaine')
    click_on("Create Employee")
    expect(page).to have_content('Elaine')
  end
end
