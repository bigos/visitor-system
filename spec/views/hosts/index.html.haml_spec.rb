require 'rails_helper'

RSpec.describe "hosts/index", type: :view do
  before(:each) do
    assign(:hosts, [
      Host.create!(
        :name => "",
        :location => "Location"
      ),
      Host.create!(
        :name => "",
        :location => "Location"
      )
    ])
  end

  it "renders a list of hosts" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
