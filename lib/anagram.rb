class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(possibles)
    possibles.select do |possible_match|
      possible_match.split("").sort == self.word.split("").sort
    end
  end

end
