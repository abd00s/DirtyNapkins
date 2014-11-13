# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Owner.create!(
	:name => "Poppa Tony",
	:email => "pt@pt.org",
	:password => "pepper"
	)
Owner.create!(
	:name => "Franklin Horatio",
	:email => "Frankyboy@gmail.com",
	:password => "67tu7H"
	)
Owner.create!(
	:name => "Bobby Bland",
	:email => "bobby@bland.com",
	:password => "bobbyboy"
	)
Owner.create!(
	:name => "Kim Noggin",
	:email => "Kelp@kim.com",
	:password => "kelp"
	)
Patron.create!(
	:name => "Mac Book",
	:email => "apple@tree.org",
	:password => "apple"
	)
Patron.create!(
	:name => "Peter Pointer",
	:email => "pp@dd.com",
	:password => "pp"
	)
Patron.create!(
	:name => "Gus Van Sent",
	:email => "gus@thegush.org",
	:password => "valentino"
	)
Patron.create!(
	:name => "Merideth Deadhorse",
	:email => "kicking@deadhorse.com",
	:password => "horsekicker"
	)
Admin.create!(
	:name => "Dirty Napkin",
	:email => "dirty@napkin",
	:password => "dirty"
	)