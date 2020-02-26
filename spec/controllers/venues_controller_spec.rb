require 'rails_helper'

describe VenuesController do
    describe "GET venues#index" do
        before do
            @venues = FactoryBot.create_list(:random_venue, 10)
            visit venues_path
        end

        it { expect(response).to have_http_status(:ok) }
        it { expect(page).to have_content("Venues in Logan Square:") }
        
    end

    describe "GET venues#show" do
        before do
            @venue = FactoryBot.create(:random_venue)
            visit venue_path(@venue.id)
        end
        it { expect(response).to have_http_status(:ok) }
        it { expect(page).to have_content(@venue.capacity) }
    end
end
