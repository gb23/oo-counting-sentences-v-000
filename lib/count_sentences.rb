require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    separated = self.split(/[!?.]/)
    separated.delete("")
    counter = 0
    separated.each{ |sentence|
      counter +=1
    }
    counter
  end
end