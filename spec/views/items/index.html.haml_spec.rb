require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :name => "Name",
        :folder => nil,
        :asset => "Asset",
        :guid => "Guid"
      ),
      Item.create!(
        :name => "Name",
        :folder => nil,
        :asset => "Asset",
        :guid => "Guid"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Asset".to_s, :count => 2
    assert_select "tr>td", :text => "Guid".to_s, :count => 2
  end
end
