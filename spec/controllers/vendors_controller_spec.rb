require 'rails_helper'

describe VendorsController do
    describe "GET vendors#index" do
        before do
            @vendors = FactoryBot.create_list(:random_vendor, 10)
            visit vendors_path
        end

        it { expect(response).to have_http_status(:ok) }
        it { expect(page).to have_content("Catering") }
        
    end

    describe "GET vendors#show" do
        before do
            @vendor = FactoryBot.create(:random_vendor)
            visit vendor_path(@vendor.id)
        end
        it { expect(response).to have_http_status(:ok) }
        it { expect(page).to have_content(@vendor.name) }
    end
end
