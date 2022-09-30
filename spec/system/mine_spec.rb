# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Mines', type: :system do
  before do
    driven_by(:rack_test)
  end

  let(:event) { create(:event) }
  let(:jade) { Mineral.find_by!(name: :jade) }

  it 'creating a new mine' do # rubocop:todo RSpec/ExampleLength
    visit event_path(event)
    find(:css, 'i.fa-circle-plus').find(:xpath, './/..').click
    select(jade.name, from: :mine_mineral_id).select_option
    select(:left, from: :mine_column).select_option
    select(20, from: :mine_scale).select_option
    click_on 'Create'

    expect(page).to have_content('Jade')
  end
end
