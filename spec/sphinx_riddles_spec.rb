#!/usr/bin/env ruby

require 'rspec'
require 'sphinx_riddles'

  describe('Riddles#result') do
    it 'will return a success page when the all riddles are answered correctly' do
      riddle = Riddles.new("A Bible-pressed leaf, or flower.")
      expect(riddle.result).to(eq(true))
    end
  end
