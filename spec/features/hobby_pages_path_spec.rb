require 'rails_helper'

describe 'The new hobby path' do
  it "will create a new hobby" do
    user = FactoryBot.create(:user)
    hobby = FactoryBot.create(:hobby)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'New Hobby'
    fill_in 'Name', :with => hobby.name
    fill_in 'Description', :with => hobby.description
    click_on 'Create Hobby'
    expect(page).to have_content(hobby.name)
  end
  it "will fail to create a new hobby" do
    user = FactoryBot.create(:user)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'New Hobby'
    fill_in 'Name', :with => ''
    fill_in 'Description', :with => ''
    click_on 'Create Hobby'
    expect(page).to have_content('Hobby was not saved')
  end
end

describe 'The edit hobby path' do
  it "will edit hobby" do
    user = FactoryBot.create(:user)
    hobby = FactoryBot.create(:hobby)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'Admin'
    click_on "Edit"
    fill_in 'Name', :with => 'Netflix'
    click_on 'Update Hobby'
    expect(page).to have_content('Netflix')
  end
end

describe 'The delete hobby path' do
  it "will delete a hobby" do
    user = FactoryBot.create(:user)
    hobby = FactoryBot.create(:hobby)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'Admin'
    click_on "Delete"
    expect(page).to have_no_content('Video Games')
  end
end
