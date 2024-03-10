# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'
require 'faker'

Item.destroy_all
Category.destroy_all
User.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


def getFoodImage()
    res = URI.open('https://foodish-api.com/api/')
    json_data = JSON.load(res)
    image_url  = json_data['image']
    return URI.open(image_url)
end

def getProfileImage()
    return URI.open('https://thispersondoesnotexist.com/')
end

def getCategoryImage()
    return URI.open('https://picsum.photos/200')
end


10.times do |i|
    category = Category.create(
    name:
    Faker::Food.unique.ethnic_category
    )

    category.image.attach(
        io:getCategoryImage(),
        filename:"cat#{i}.jpg"
    )
end

categoires = Category.all


10.times do |i|

    full_name = Faker::Name.unique.name
    email = Faker::Alphanumeric.unique.alpha(number: 10) + '@testmail.com'
    address = Faker::Address.full_address;
    image = getProfileImage()
    user = User.create(
        full_name:full_name,
        email:email,
        address:address,
        password:'temp',
        password_confirmation:'temp'
    )
    user.profile_picture.attach(io:image,filename:"user#{i}.jpeg")

    categoires.each do |cat|
        prod = cat.items.build(
            name: Faker::Food.dish,
            user:user,
            description:Faker::Food.description,
            price:Faker::Commerce.price,
            rating:Faker::Number.within(range: 1..5),
        )

        prod.image.attach(
            io:getFoodImage(),
            filename:Faker::Alphanumeric.alpha(number: 10)+'.jpg'
        )
        prod.save
    end

end
