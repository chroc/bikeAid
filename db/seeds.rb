# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

LawFirm.create([
  {company_name: "Sharkos Firm" , address: '39 Londsdale St', city: 'Melbourne', state: 'VIC', postcode: '3000', free_advice: 'TRUE', email: 'chroc7@icloud.com', phone_number: '0390009000'},
  {company_name: 'Yellow Snow Firm & Associates', address: '123 Winner St', city: 'Melbourne', state: 'VIC', postcode: '3003', free_advice: 'FALSE', email: 'tecurtain@gmail.com', phone_number: '0390008000'},
  {company_name: 'Firm Lawyers Firm & Disassiciates', address: '321 Collins St', city: 'Melbourne', state: 'VIC', postcode: '3000', free_advice: 'TRUE', email: 'cosgrove.jamesc@gmail.com', phone_number: '0390007000'}
])
