require 'rails_helper'

describe 'The new project path' do
  it "will create a new project" do
    user = FactoryBot.create(:user)
    project = FactoryBot.create(:project)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'New Project'
    fill_in 'Name', :with => project.name
    fill_in 'Description', :with => project.description
    fill_in 'Repository Link', :with => project.repo_link
    fill_in 'Deployed Project Link', :with => project.deployment_link
    click_on 'Create Project'
    expect(page).to have_content(project.name)
  end
  it "will fail to create a new project" do
    user = FactoryBot.create(:user)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'New Project'
    fill_in 'Name', :with => ''
    fill_in 'Description', :with => ''
    click_on 'Create Project'
    expect(page).to have_content('Project was not saved')
  end
end

describe 'The edit project path' do
  it "will edit project" do
    user = FactoryBot.create(:user)
    project = FactoryBot.create(:project)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'Admin'
    click_on "Edit"
    fill_in 'Name', :with => 'Better Project'
    click_on 'Update Project'
    expect(page).to have_content('Better Project')
  end
end

describe 'The delete project path' do
  it "will delete a project" do
    user = FactoryBot.create(:user)
    project = FactoryBot.create(:project)
    user.update(admin: true)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'Admin'
    click_on "Delete"
    expect(page).to have_no_content('Best Project Ever')
  end
end
