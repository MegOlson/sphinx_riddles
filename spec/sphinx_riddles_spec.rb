#!/usr/bin/env ruby

require 'rspec'
require 'sphinx_riddles'

  describe('Riddles#result') do
    it 'will return a success page when the all riddles are answered correctly' do
      riddle = Riddles.new("correct", "correct", "correct")
      expect(riddle.result).to(eq(true))
    end
    it 'will return a failure page when any riddle is answered incorrectly' do
      riddle = Riddles.new("incorrect", "incorrect", "incorrect")
      expect(riddle.result).to(eq(false))
    end
  end
