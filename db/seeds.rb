User.destroy_all
Campaign.destroy_all
Voter.destroy_all

gender = ['M', 'F', 'O']
party = ['DEM', 'REP', 'GRE', 'IND', 'NPA']
addys709 = ['701 S D St', '822 S D St', '930 S D St', '825 S C St', '816 S F St', '901 S E', '806 S E St', '832 S E St', '906 S B St', '919 S B', '706 S B St', '722 S B St', '711 S B St', '801 S B St', '715 S D St', '724 S D St']
addys709_shuff = addys709.shuffle
addys1317 = ['1331 N Palmway', '1301 N Palmway', '1415 N Palmway', '1411 N Palmway', '1505 N Palmway', '1421 N Palmway', '1429 N Palmway', '1501 N Palmway', '1509 N Palmway', '1515 N Palmway', '1606 N Palmway', '1622 N Palmway', '1719 N Palmway', '1714 N Palmway', '1720 N Palmway', '1728 N Palmway']
addys1317_shuff = addys1317.shuffle
addys1701 = ['1715 N D St', '1722 N D St', '1830 N D St', '1514 N D St', '1502 N D St', '1414 N D St', '1402 N D St', '1231 N D St', '1025 N B St', '1222 N D St', '1213 N B St', '1225 N B St', '1219 N E St', '1223 N E St', '1202 N E St']
addys1701_shuff = addys1701.shuffle


User.create({
  f_name: "Melodie",
  l_name: "Malfa",
  email: "melmalfa@amazingvolunteer.com",
  phone_number: "561-333-9997",
  street_address: "709 South D Street",
  password: "Malfa"
  })

User.create({
  f_name: "Mary",
  l_name: "Mack",
  email: "demo@try.com",
  phone_number: "561-337-4997",
  street_address: "1317 N Palmway",
  password: "demo"
  })

User.create({
  f_name: "Brian",
  l_name: "Cash",
  email: "b.cash@amazingvolunteer.com",
  phone_number: "561-373-9987",
  street_address: "1701 North D Street",
  password: "Cash"
  })

15.times do
  voters = Voter.create({
        f_name: Faker::Name.first_name,
        l_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone_number: Faker::PhoneNumber.phone_number,
        street_address: addys1701_shuff.pop,
        party: party.sample,
        birthdate: Faker::Time.date(year_range: 82, year_latest: 18),
        race: Faker::Identification.ethnicity,
        gender: gender.sample,
        reg_date: Faker::Time.date(year_range: 82, year_latest: 18),
        last_vote_date: Faker::Time.date(year_range: 5, year_latest: 1)
  })
end

15.times do
  voters = Voter.create({
        f_name: Faker::Name.first_name,
        l_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone_number: Faker::PhoneNumber.phone_number,
        street_address: addys1317_shuff.pop,
        party: party.sample,
        birthdate: Faker::Time.date(year_range: 82, year_latest: 18),
        race: Faker::Identification.ethnicity,
        gender: gender.sample,
        reg_date: Faker::Time.date(year_range: 82, year_latest: 18),
        last_vote_date: Faker::Time.date(year_range: 5, year_latest: 1)
  })
end

15.times do
  voters = Voter.create({
        f_name: Faker::Name.first_name,
        l_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone_number: Faker::PhoneNumber.phone_number,
        street_address: addys709_shuff.pop,
        party: party.sample,
        birthdate: Faker::Time.date(year_range: 82, year_latest: 18),
        race: Faker::Identification.ethnicity,
        gender: gender.sample,
        reg_date: Faker::Time.date(year_range: 82, year_latest: 18),
        last_vote_date: Faker::Time.date(year_range: 5, year_latest: 1)
  })
end


