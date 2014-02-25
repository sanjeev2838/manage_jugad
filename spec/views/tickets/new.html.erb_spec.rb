require 'spec_helper'

describe "tickets/new" do
  before(:each) do
    assign(:ticket, stub_model(Ticket,
      :title => "MyString",
      :description => "MyText",
      :project => nil
    ).as_new_record)
  end

  it "renders new ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tickets_path, "post" do
      assert_select "input#ticket_title[name=?]", "ticket[title]"
      assert_select "textarea#ticket_description[name=?]", "ticket[description]"
      assert_select "input#ticket_project[name=?]", "ticket[project]"
    end
  end
end
