require 'rails_helper'

RSpec.describe "visitors/index", type: :view do
  before(:each) do
    assign(:visitors, [
      Visitor.create!(
        :name => "Name",
        :host_id => "Host",
        :host_name => "Host Name",
        :visit_purpose => "MyText",
        :status => "Status"
      ),
      Visitor.create!(
        :name => "Name",
        :host_id => "Host",
        :host_name => "Host Name",
        :visit_purpose => "MyText",
        :status => "Status"
      )
    ])
  end

  it "renders a list of visitors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Host".to_s, :count => 2
    assert_select "tr>td", :text => "Host Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
