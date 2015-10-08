Category.destroy_all
User.destroy_all
Performer.destroy_all

categories = Category.create([ { category: 'Musical Act' }, { category: 'Comedy Act' }, { category: 'Circus Act' }])

    User.create(
        first_name: FFaker::Name::first_name,
        last_name: FFaker::Name::last_name,
        email: FFaker::Internet::free_email,
        password: "password",
        performer: true
    )
    Performer.create(
        user_id: 1,
        performer_name: FFaker::Name::name,
        performer_email: FFaker::Internet::free_email,
        hourly_rate: "$76-100 per hour",
        city: "San Francisco",
        category_id: rand(1..3),
        subcategory: FFaker::Job.title,
        description: FFaker::Lorem.paragraph,
        video1: "https://www.youtube.com/watch?v=xplEPT5I39E",
        video2: "https://www.youtube.com/watch?v=FdRA5Q5-dgU",
        video3: "https://www.youtube.com/watch?v=OTaKFMM3dpw"
    )


    User.create(
        first_name: FFaker::Name::first_name,
        last_name: FFaker::Name::last_name,
        email: FFaker::Internet::free_email,
        password: "password",
        performer: true
    )
    Performer.create(
        user_id: 2,
        performer_name: FFaker::Name::name,
        performer_email: FFaker::Internet::free_email,
        hourly_rate: "$51-75 per hour",
        city: "San Francisco",
        category_id: rand(1..3),
        subcategory: FFaker::Job.title,
        description: FFaker::Lorem.paragraph,
        video1: "https://www.youtube.com/watch?v=6Jh2n5ki0KE",
        video2: "https://www.youtube.com/watch?v=GIYEGDJoluc",
        video3: "https://www.youtube.com/watch?v=RBumgq5yVrA"
    )


    User.create(
        first_name: FFaker::Name::first_name,
        last_name: FFaker::Name::last_name,
        email: FFaker::Internet::free_email,
        password: "password",
        performer: true
    )
    Performer.create(
        user_id: 3,
        performer_name: FFaker::Name::name,
        performer_email: FFaker::Internet::free_email,
        hourly_rate: "$26-50 per hour",
        city: "San Francisco",
        category_id: rand(1..3),
        subcategory: FFaker::Job.title,
        description: FFaker::Lorem.paragraph,
        video1: "https://www.youtube.com/watch?v=pnv5iKB2hl4",
        video2: "https://www.youtube.com/watch?v=1X7fZoDs9KU",
        video3: "https://www.youtube.com/watch?v=RBumgq5yVrA"
    )

    User.create(
        first_name: FFaker::Name::first_name,
        last_name: FFaker::Name::last_name,
        email: FFaker::Internet::free_email,
        password: "password",
        performer: true
    )
    Performer.create(
        user_id: 4,
        performer_name: FFaker::Name::name,
        performer_email: FFaker::Internet::free_email,
        hourly_rate: "$1-25 per hour",
        city: "San Francisco",
        category_id: rand(1..3),
        subcategory: FFaker::Job.title,
        description: FFaker::Lorem.paragraph,
        video1: "https://www.youtube.com/watch?v=pzN4WGPC4kc",
        video2: "https://www.youtube.com/watch?v=apbSsILLh28",
        video3: "https://www.youtube.com/watch?v=RBumgq5yVrA"
    )

    User.create(
        first_name: FFaker::Name::first_name,
        last_name: FFaker::Name::last_name,
        email: FFaker::Internet::free_email,
        password: "password",
        performer: true
    )
    Performer.create(
        user_id: 5,
        performer_name: FFaker::Name::name,
        performer_email: FFaker::Internet::free_email,
        hourly_rate: "101-150 per hour",
        city: "San Francisco",
        category_id: rand(1..3),
        subcategory: FFaker::Job.title,
        description: FFaker::Lorem.paragraph,
        video1: "https://www.youtube.com/watch?v=DZeIZbxK50w",
        video2: "https://www.youtube.com/watch?v=hT_nvWreIhg",
        video3: "https://www.youtube.com/watch?v=RBumgq5yVrA"
    )

    5.times do 
       User.create(
            first_name: FFaker::Name::first_name,
            last_name: FFaker::Name::last_name,
            email: FFaker::Internet::free_email,
            password: "password",
            performer: false
        ) 
    end