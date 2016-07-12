require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "Name",
      :folder => nil,
      :asset => "Asset",
      :guid => "Guid"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Asset/)
    expect(rendered).to match(/Guid/)
  end
end
