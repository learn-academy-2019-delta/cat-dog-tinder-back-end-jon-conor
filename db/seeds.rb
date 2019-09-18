# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat_attributes = [
    {
        name: 'Hunter',
        age: 12,
        enjoys: 'Not being found until he wants to be found'
    },
    {
        name: 'Molly',
        age: '19',
        enjoys: 'Telling you that she wants to be pet.'
    }
]

cat_attributes.each do |attributes|
    Cat.create(attributes)
end
