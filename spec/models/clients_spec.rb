require 'rails_helper'

describe Client do
  let(:attributes) do
    { 
      first_name: 'first name',
      last_name: 'last name',
      username: 'user',
      password: 'password',
      password_confirmation: 'password'
    }
  end

  let(:missing_first_name) { attributes.except(:first_name) }
  let(:missing_last_name) { attributes.except(:last_name) }
  let(:missing_username) { attributes.except(:username) }
  let(:missing_password) { attributes.except(:password) }
  let(:missing_password_confirmation) { attributes.except(:password_confirmation) }
  let(:existing_username) { attributes.merge(username: 'sam') }

  it 'is valid when expected' do
    expect(Client.new(attributes)).to be_valid
  end

  it "is invalid without first name" do
    expect(Client.new(missing_first_name)).to be_invalid
  end

  it "is invalid without last name" do
    expect(Client.new(missing_last_name)).to be_invalid
  end

  it "is invalid without username" do
    expect(Client.new(missing_username)).to be_invalid
  end

  it "is invalid without password" do
    expect(Client.new(missing_password)).to be_invalid
  end

  it "is invalid without password confirmation" do
    expect(Client.new(missing_password_confirmation)).to be_invalid
  end

  it "is invalid with non-unique username" do
    Client.create(first_name: 'first name', last_name: 'last name', username: 'sam', password: 'password', password_confirmation: 'password')
    expect(Client.new(existing_username)).to be_invalid
  end

  context '#upcoming_events' do
    it 'can return all current and upcoming events of a client' do
      new_client = Client.new(first_name: 'first name', last_name: 'last name', username: 'new client', password: 'password', password_confirmation: 'password')
      new_client.save
      new_venue = Venue.new(name: 'vanue')
      new_venue.save
      future_event = Event.new(title: 'new event', date: Date.new(2020, 1, 1), venue_id: 1, client_id: new_client.id)
      future_event.save

      expect(new_client.upcoming_events).to include(future_event)
    end
  end

  context '#past_events' do
    it 'can return all past events of a client' do
      new_client = Client.new(first_name: 'first name', last_name: 'last name', username: 'new client', password: 'password', password_confirmation: 'password')
      new_client.save
      new_venue = Venue.new(name: 'vanue')
      new_venue.save
      past_event = Event.new(title: 'new event', date: Date.new(2010, 1, 1), venue_id: 1, client_id: new_client.id)
      past_event.save
      
      expect(new_client.past_events).to include(past_event)
    end
  end

end

