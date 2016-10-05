require 'rails_helper'

RSpec.describe "visitors/show", type: :view do
  before(:each) do
    @visitor = assign(:visitor, Visitor.create!(
      :name => "Name",
      :host_id => "Host",
      :host_name => "Host Name",
      :visit_purpose => "MyText",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Host/)
    expect(rendered).to match(/Host Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Status/)
  end
end
