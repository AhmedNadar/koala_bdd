require 'rails_helper'

describe '/readers/new.html.erb' do
  before :each do
   reader = mock_model('Reader').as_new_record.as_null_object
   assign(:reader, reader)
   render
  end
 it 'has new_reader form' do
   expect(rendered).to have_selector('form.new-reader')
 end
 it 'has reader_email field' do
  expect(rendered).to have_selector('.form-control')
 end

 it 'has reader_password field' do
   expect(rendered).to have_selector('.form-control')
 end

 it 'has reader_password_confirmation field' do
   expect(rendered).to have_selector('.form-control')
 end

 it 'has register button' do
   expect(rendered).to have_selector('.btn-success')
 end
end
