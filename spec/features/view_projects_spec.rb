require 'spec_helper'

feature 'Viewing Projects' do
  scenario 'Listing all projects' do
    project = FactoryGirl.create(:project, name: 'Text 2')
    visit '/'
    click_link 'Text 2'
    expect(page.current_url).to eql(project_url(project))
  end
end
