class Contact

  @@contacts = []
  @@id       = 1

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, notes = 'N/A')
    @first_name = first_name
    @last_name  = last_name
    @email      = email
    @notes      = notes

    @id         = @@id
    @@id       += 1
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, notes = 'N/A')
    new_contact = Contact.new(first_name, last_name, email, notes)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    return @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    # if @@contacts.include?(id)
    #   puts "yes they're here"
    # else
    #   puts "Not on the list"
    # end

  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by

  end

  # This method should delete all of the contacts
  def self.delete_all
    puts "Are you sure you want to delete all contacts?"
    answer = gets.chomp
    if answer == "yes" || answer == "true"
       @@contacts.clear
       puts "Your contact list is now empty"
    else
      puts "No contacts have been deleted"
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.delete(self)
    return @@contacts
  end

  # Feel free to add other methods here, if you need them.
  # WRITERS
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email=(email)
    @email = email
  end

  def notes=(notes)
    @notes = notes
  end

  # READERS
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def notes
    @notes
  end

  def id
    @id
  end
end

# abby = Contact.create("abby", "christens", 'abby@gmail.com')
# abby.first_name = "Abigail"
# puts abby.first_name
