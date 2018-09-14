require 'rails_helper'

describe 'The new skill path' do
  it "will create a new skill" do
    user = FactoryBot.create(:user)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'New Skill'
    skill = FactoryBot.create(:skill)
    fill_in 'Name', :with => skill.name
    fill_in 'Experience', :with => skill.experience
    click_on 'Create Skill'
    expect(page).to have_content(skill.name)
  end
end
