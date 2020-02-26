FactoryBot.define do
    factory :random_vendor, class: Vendor do
        name {Faker::Restaurant.name}
        trait :catering do
            category {'Catering'}
        end
        trait :music do
            category {'Music'}
        end
        trait :decor do
            category {'Decor'}
        end
    end

    factory :random_venue, class: Venue do
        name {Faker::JapaneseMedia::SwordArtOnline.location} 
        capacity {rand(20...200)}
        logo {Faker::Avatar.image}
        trait :logan do
            location {'Logan Square'}
        end
        trait :north do
            location {'River North'}
        end
        trait :west do
            location {'West Side'}
        end
    end

    factory :random_client, class: Client do
        username {Faker::Internet.username}
        first_name {Faker::Name.first_name}
        last_name {Faker::Name.last_name}
        location {'Uptown'}
        password {"password"}
        password_confirmation {"password"}
    end

    factory :event, class: Event do
        association :client, factory: :random_client
        association :venue, factory: :random_venue
        title {Faker::Lorem.words(number: rand(2...4))}
        date {Faker::Date.between(from: 1.year.ago, to: 1.year.from_now)}
    end
    
end