require 'pry'
require 'rspec'

class WordCounter

  def initialize(phrase)
    @phrase = phrase
    @all_words = []
    @uniq_words = []
    @word_count = [] 
  end

  def split_words
   @all_words = @phrase.split( )
   get_uniq_words
  end

  def get_uniq_words
    @uniq_words = @all_words.uniq
    @uniq_words.each do |word|
      words_hash = {word =>0}
      @word_count << words_hash
     end
    @word_count
    count
  end

  def count
    @word_count.each do |count|
      @all_words.each do |each_word|
          if count.has_key?(each_word)
            count[each_word] +=1
        end
      end
    end
    @word_count
  end
end


word =WordCounter.new("this is is is an array")
word.split_words