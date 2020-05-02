# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'articles/show', type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
                                  title: 'Title',
                                  content: 'Content',
                                  user: nil
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(//)
  end
end
