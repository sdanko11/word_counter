require 'rspec'
require_relative 'word'

describe WordCounter do

  let(:phrase) { WordCounter.new("this is a new phrase") }
  let(:phrase1) { WordCounter.new("this this is is") }
  let(:phrase2) { WordCounter.new("hi hi hi hi hi is is") }

    it 'all the words in the phrase' do
      expect(phrase.split_words).to eql([{'this'=> 1}, {'is'=> 1}, {'a' => 1}, {'new' => 1},{'phrase'=> 1}])
    end

    it 'should count all the words in the phrase' do
      expect(phrase1.split_words).to eql([{'this'=> 2}, {'is'=> 2}])
    end

    it 'it should count all the words in the phrase' do
      expect(phrase2.split_words).to eql([{'hi' => 5}, {'is' => 2}])
    end

  end
