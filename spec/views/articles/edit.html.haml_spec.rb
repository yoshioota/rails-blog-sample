require 'rails_helper'

RSpec.describe "articles/edit", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :user => nil,
      :title => "MyString",
      :body_source => "MyText",
      :body => "MyText",
      :aasm_state => "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_user_id[name=?]", "article[user_id]"

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_body_source[name=?]", "article[body_source]"

      assert_select "textarea#article_body[name=?]", "article[body]"

      assert_select "input#article_aasm_state[name=?]", "article[aasm_state]"
    end
  end
end
