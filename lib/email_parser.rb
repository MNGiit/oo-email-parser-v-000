# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end
  
  def parse
    emails_array = []
    #Split each email from the string
    @emails.split.each do |email|
      #Remove "," and add it to emails_array
      emails_array.push(email.split(","))
    end
    #Flatten emails_array to only get 1D array (some reason it was 2D?)
    #Uniq removes copies from the array
    emails_array.flatten.uniq
  end
  
end