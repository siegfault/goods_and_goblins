# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'EventTypes', type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'lists event types' do
    create(:event_type, name: 'Test Type')

    visit event_types_path

    expect(page).to have_content('Test Type')
  end

  it 'creating a new event type' do
    visit event_types_path
    click_on 'Create New Event Type'
    fill_in 'event_type[name]', with: 'Test Type'
    click_on 'Create'

    expect(page).to have_content('Test Type')
  end

  it 'viewing an event type' do
    event_type = create(:event_type, name: 'Test Type')

    visit event_types_path(event_type)

    expect(page).to have_content('Test Type')
  end
end
