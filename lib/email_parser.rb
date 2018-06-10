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
    emails_array.uniq
  end
  
end