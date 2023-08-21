require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
burnaby = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

richmond = Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)

gastown = Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count

# CREATE TABLE "stores" ("id" bigserial primary key, "name" character varying, "annual_revenue" integer, "mens_apparel" boolean, "womens_apparel" boolean, "created_at" timestamp(6) NOT NULL, "updated_at" timestamp(6) NOT NULL)
