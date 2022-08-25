# frozen_string_literal: true

module ApplicationHelper
  def mine_card_offset(mine)
    mine_card_values[mine.column]
  end

  def create_badge(url)
    content_tag(:span, class: 'badge badge-primary') do
      link_to(fa_icon('circle-plus'), url)
    end
  end

  def fa_icon(name)
    content_tag(:i, '', class: "fa-solid fa-#{name}")
  end

  def mine_card_values
    {
      left: 'col-sm-6 offset-md-0',
      middle: 'col-sm-8 offset-md-2',
      right: 'col-sm-6 offset-md-6'
    }.stringify_keys
  end
end
