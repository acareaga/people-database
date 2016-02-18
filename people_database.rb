# PersonDatabase should be initialized with an array of Person objects

# people = [...]
# people_db = PeopleDatabase.new(people)

require './person'
require 'pry'

class PeopleDatabase

  attr_accessor :people

  def initialize
    @people = []
  end

  def add(attributes)
    people << Person.new(attributes)
  end

  def remove(email_address)

  end

  def people_from_state(state)
    people.each {|record| puts "#{record.first_name} " "#{record.last_name}" if record.state == state}
  end

  def email_addresses
    people.map {|record| puts record.email}
  end

  def number_from_state(state)
    people.count {|record| record.state == state}
  end
end

people_db = PeopleDatabase.new
people_db.add(first_name: "Tess", last_name: "Griffin", email: "tess@turing.io", state: "CO")
people_db.add(first_name: "Bob", last_name: "Goa", email: "bob@turing.io", state: "WI")
people_db.add(first_name: "Sally", last_name: "Wally", email: "sally@turing.io", state: "CO")
people_db.add(first_name: "Chris", last_name: "Grif", email: "chris@turing.io", state: "FL")
people_db.people_from_state("CO")
puts people_db.number_from_state("FL")
people_db.email_addresses


# Remove a person from the collection given an email address
# Return all of the people from a given state
# Return a comma-separated string of every person's email address
# Count the number of people from a given state
