require 'rails_helper'

RSpec.describe LessonsController, type: :controller do
  describe "#index" do
    subject { get :index }

    # https://stackoverflow.com/questions/5359558/when-to-use-rspec-let/5359979#5359979
    let!(:lessons) { create_list(:lesson, 5) }

    it "return all the lessons" do
      # exécute un get index
      subject
      expect(json_response.size).to eq(5)
      expect(json_response.first[:id]).to be_in(lessons.map(&:id))
    end

    it "returns a 200" do
      subject
      expect(response).to be_ok
    end
  end
end
