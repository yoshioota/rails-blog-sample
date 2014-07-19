require 'rails_helper'

RSpec.describe "articles/new", :type => :view do
  before(:each) do
    assign(:article, Article.new(
      :user => nil,
      :title => "MyString",
      :body_source => "MyText",
      :body => "MyText",
      :aasm_state => "MyString"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_user_id[name=?]", "article[user_id]"

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_body_source[name=?]", "article[body_source]"

      assert_select "textarea#article_body[name=?]", "article[body]"

      assert_select "input#article_aasm_state[name=?]", "article[aasm_state]"
    end
  end
end
