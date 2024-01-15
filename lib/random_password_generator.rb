# frozen_string_literal: true

# lib/random_password_generator.rb
module RandomPasswordGenerator
  def self.generate_password(length = 12)
    characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+"
    password = Array.new(length) { characters[rand(characters.length)] }.join
    password
  end
end

require 'random_password_generator/view_helper' if defined?(Rails)