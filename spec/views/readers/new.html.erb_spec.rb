require 'rails_helper'

describe '/readers/new.html.erb' do
  before :each do
    reader = mock_model("Reader").as_new_record.as_null_object
    assign(:reader, reader)
    render
  end
  it "has a new reader form" do
      expect(rendered).to have_selector('.new-reader')
  end

  it "has a reader_email field" do
    expect(rendered).to have_selector('.form-control')
  end
  it "has a reader_password field" do
    expect(rendered).to have_selector('.form-control')
  end
  it "has a reader_password_confirmation field" do
    expect(rendered).to have_selector('.form-control')
  end
  it "has a register button" do
    expect(rendered).to have_selector('.btn')
  end
end
