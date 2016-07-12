require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :folder => nil,
      :asset => "MyString",
      :guid => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_folder_id[name=?]", "item[folder_id]"

      assert_select "input#item_asset[name=?]", "item[asset]"

      assert_select "input#item_guid[name=?]", "item[guid]"
    end
  end
end
