# Your code goes here!
require 'pry'
class Anagram
  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def match(something)
    result = []
    something.each do |x|
      if phrase.split(/(?=[\w])/).sort == x.split(/(?=[\w])/).sort
        result << x
      end
    end
    result
  end

end
