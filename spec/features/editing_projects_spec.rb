require 'spec_helper'

feature 'Editing Projects' do
  scenario ' can update a Project' do
    FactoryGirl.create(:project, name: "Test")

    visit '/'
    click_link 'Test'
    click_link "Edit Project"
    fill_in 'Name', with: 'Test Beta'
    click_button 'Update Project'

    expect(page).to have_content("Project has been updated.")

  end
end
