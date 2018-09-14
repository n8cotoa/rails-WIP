require 'rails_helper'

describe 'The new skill path' do
  it "will create a new skill" do
    user = FactoryBot.create(:user)
    skill = FactoryBot.create(:skill)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'New Skill'
    fill_in 'Name', :with => skill.name
    fill_in 'Experience', :with => skill.experience
    click_on 'Create Skill'
    expect(page).to have_content(skill.name)
  end
  it "will fail to create a new skill" do
    user = FactoryBot.create(:user)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'New Skill'
    fill_in 'Name', :with => ''
    fill_in 'Experience', :with => ''
    click_on 'Create Skill'
    expect(page).to have_content('Skill was not saved')
  end
end

describe 'The edit skill path' do
  it "will edit skill" do
    user = FactoryBot.create(:user)
    skill = FactoryBot.create(:skill)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'Admin'
    click_on "Edit"
    fill_in 'Name', :with => 'Awesome Dancing'
    click_on 'Update Skill'
    expect(page).to have_content('Awesome Dancing')
  end
end

describe 'The delete skill path' do
  it "will delete a skill" do
    user = FactoryBot.create(:user)
    skill = FactoryBot.create(:skill)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'Admin'
    click_on "Delete"
    expect(page).to have_no_content('Awesome Coding')
  end
end
