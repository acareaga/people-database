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
end

people_db = PeopleDatabase.new
people_db.add(first_name: "Tess", last_name: "Griffin", email: "tess@turing.io", state: "CO")


# Remove a person from the collection given an email address
# Return all of the people from a given state
# Return a comma-separated string of every person's email address
# Count the number of people from a given state
