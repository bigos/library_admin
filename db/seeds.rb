# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

if Rails.env.development?
  created = 0
  random = Random.new(Time.now.to_i)
  while created < 50
    words = Forgery(:lorem_ipsum).words(random.rand(1..5), random: true)
    p = FactoryBot.build(:publisher, name: words)
    if p.valid?
      p.save
      created += 1
    end
  end

  created = 0
  while created < 500
    if (created % 5).zero?
      mns = Forgery(:lorem_ipsum).character(random: true).capitalize
    else
      mns = nil
    end
    words = Forgery(:lorem_ipsum).words(random.rand(1..5), random: true)
    p = FactoryBot.build(:author, first_name: Forgery(:lorem_ipsum).word(random: true).capitalize,
                         last_name: Forgery(:lorem_ipsum).word(random: true).capitalize,
                         middle_names: mns,
                         publisher_id: (random.rand(Publisher.first.id .. Publisher.last.id)))
    if p.valid?
      p.save
      created += 1
    end
  end

  created = 0
  while created < 500
    words = Forgery(:lorem_ipsum).words(random.rand(1..5), random: true)
    p = FactoryBot.build(:book, title: Forgery(:lorem_ipsum).words(random.rand(1..6), random: true).capitalize,
                         author_id: (random.rand(Author.first.id .. Author.last.id)))
    if p.valid?
      p.save
      created += 1
    end
  end
end
