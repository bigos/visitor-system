require 'rails_helper'

RSpec.describe "visitors/edit", type: :view do
  before(:each) do
    @visitor = assign(:visitor, Visitor.create!(
      :name => "MyString",
      :host_id => "MyString",
      :host_name => "MyString",
      :visit_purpose => "MyText",
      :status => "MyString"
    ))
  end

  it "renders the edit visitor form" do
    render

    assert_select "form[action=?][method=?]", visitor_path(@visitor), "post" do

      assert_select "input#visitor_name[name=?]", "visitor[name]"

      assert_select "input#visitor_host_id[name=?]", "visitor[host_id]"

      assert_select "input#visitor_host_name[name=?]", "visitor[host_name]"

      assert_select "textarea#visitor_visit_purpose[name=?]", "visitor[visit_purpose]"

      assert_select "input#visitor_status[name=?]", "visitor[status]"
    end
  end
end
