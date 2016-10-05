require 'rails_helper'

RSpec.describe "hosts/show", type: :view do
  before(:each) do
    @host = assign(:host, Host.create!(
      :name => "",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Location/)
  end
end
