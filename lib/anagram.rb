require 'pry'
class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def sort_letters(word)
    word.split('').sort
  end

  def match(pot_matches)
    matches = []
    pot_matches.each do |pot_match|
      if sort_letters(word) == sort_letters(pot_match)
        matches << pot_match
      end
    end
    matches
  end


end
