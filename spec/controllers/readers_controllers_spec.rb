require 'rails_helper'

describe ReadersController do
  describe 'GET new ' do
    let!(:reader) {mock_model("Reader").as_new_record}
    before :each do
      Reader.stub(:new).and_return(reader)
    end

    it 'assignes @reader to the view' do
      get :new
      expect(assigns[:reader]).to eq(reader)
    end

    it 'renders new templete' do
      get :new
      expect(response).to render_template :new
    end
  end
end
