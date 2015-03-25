require 'rails_helper'
describe ReadersController do
  describe "GET New" do

    let(:reader) {mock_model("Reader").as_new_record}

    before :each do
      allow(Reader).to receive(:new).and_return(reader)
    end

    it "assigns @reaer variable to the view" do
     get :new
     expect(assigns[:reader]).to eq(reader)
    end

    it "renders new template"  do
      get :new
      expect(response).to render_template :new
    end
  end
end
