require 'rails_helper'

describe Event do

  it "is invalid without a title" do
    event = Event.new
    expect(event).to be_invalid
  end

end

describe "event#initialize" do
  db_count = Event.count
  let!(:event) {FactoryBot.create(:event)}

  it "adds a new event to the database" do
    expect(event).to be_an_instance_of(Event)
    expect(Event.count).to eq(db_count+1)
  end
end