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

end

