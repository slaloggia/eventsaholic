require 'rails_helper'

describe Event do

  it "is invalid without a title" do
    event = Event.new
    expect(event).to be_invalid
  end

end