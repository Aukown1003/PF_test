# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.create!(
  [
    {
      user_id: '1',
      title: 'test1',
      temperature: '63',
      total_time: '180',
      low_temperature_cooking_time: '60',
      is_open: true
    },
    {
      user_id: '1',
      title: 'test2',
      temperature: '68',
      total_time: '190',
      low_temperature_cooking_time: '70',
      is_open: true
    },
    {
      user_id: '1',
      title: 'test3',
      temperature: '69',
      total_time: '200',
      low_temperature_cooking_time: '50',
      is_open: true
    }
  ]
)
Review.create!(
  [
    {
      user_id: '1',
      recipe_id: '1',
      content: '美味しい',
      score: 4
    },
    {
      user_id: '1',
      recipe_id: '2',
      content: '美味しい2',
      score: 5
    },
    {
      user_id: '1',
      recipe_id: '1',
      content: 'まずい',
      score: 2
    },
  ]
  )