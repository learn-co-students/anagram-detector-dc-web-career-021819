# Your code goes here!

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def sort_word(w)
    ret = w.chars.sort do |l, h|
      l <=> h
    end
    ret
  end

  def match(arr)
    ret = []
    arr.each do |e|
      if sort_word(self.word) == sort_word(e)
        ret << e
      end
    end
    ret
  end
end
