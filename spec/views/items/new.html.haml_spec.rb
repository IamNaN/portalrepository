require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :folder => nil,
      :asset => "MyString",
      :guid => "MyString"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_folder_id[name=?]", "item[folder_id]"

      assert_select "input#item_asset[name=?]", "item[asset]"

      assert_select "input#item_guid[name=?]", "item[guid]"
    end
  end
end
