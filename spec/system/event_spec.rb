# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Events' do
  before do
    driven_by(:rack_test)
  end

  let(:event_type) { create(:event_type) }
  let(:event) { create(:event, event_type:) }

  it 'creating a new event' do # rubocop:disable RSpec/ExampleLength
    visit event_type_path(event_type)
    find(:css, 'i.fa-circle-plus').find(:xpath, './/..').click
    fill_in 'event[started_on]', with: '2020-02-02'
    fill_in 'event[ended_on]', with: '2020-02-02'
    click_on 'Create'

    expect(page).to have_content('2020-02-02')
  end

  it 'viewing an event' do
    visit event_path(event)

    expect(page).to have_content(event.started_on)
  end
end
