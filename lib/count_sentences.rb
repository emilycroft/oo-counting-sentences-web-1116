require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    array = self.split(/[.!?]/)
    array.delete_if { |element| element == "." || element == "?" || element == "!" || element == "" }
    array.length
  end
end
