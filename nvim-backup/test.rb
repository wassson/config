#!/usr/bin/env ruby

# Test file for ruby-lsp functionality
class Calculator
  attr_reader :result

  def initialize
    @result = 0
  end

  def add(number)
    @result += number
    self
  end

  def subtract(number)
    @result -= number
    self
  end

  def multiply(number)
    @result *= number
    self
  end

  def divide(number)
    raise ArgumentError, 'Cannot divide by zero' if number.zero?

    @result /= number
    self
  end

  def reset
    @result = 0
    self
  end

  def to_s
    @result.to_s
  end
end

# Test the calculator
calc = Calculator.new
puts calc.add(10).subtract(5).multiply(2).result # Should output 10

# Test error handling
begin
  calc.reset.divide(0)
rescue ArgumentError => e
  puts "Error: #{e.message}"
end

# Test method chaining with different operations
result = Calculator.new
                   .add(100)
                   .subtract(25)
                   .multiply(3)
                   .divide(5)
                   .result

puts "Final result: #{result}" # Should output 45

# Test class methods and instance variables
def fibonacci(n)
  return n if n <= 1

  fibonacci(n - 1) + fibonacci(n - 2)
end

# Generate fibonacci sequence
(0..10).each do |i|
  puts "fibonacci(#{i}) = #{fibonacci(i)}"
end

# Test Ruby features that LSP should understand
module StringHelpers
  def self.reverse_words(text)
    text.split(' ').map(&:reverse).join(' ')
  end

  def self.capitalize_first_letter(text)
    text.gsub(/\b\w/) { |match| match.upcase }
  end
end

sample_text = 'hello world from ruby'
puts StringHelpers.reverse_words(sample_text)
puts StringHelpers.capitalize_first_letter(sample_text)

# Test hash and array operations
data = {
  users: [
    { name: 'Alice', age: 30, role: 'admin' },
    { name: 'Bob', age: 25, role: 'user' },
    { name: 'Charlie', age: 35, role: 'moderator' }
  ]
}

# Filter and map operations
admins = data[:users].select { |user| user[:role] == 'admin' }
user_names = data[:users].map { |user| user[:name] }

puts "Admins: #{admins}"
puts "All users: #{user_names.join(', ')}"

# Test blocks and yield
def with_timing
  start_time = Time.now
  yield if block_given?
  end_time = Time.now
  puts "Execution time: #{end_time - start_time} seconds"
end

with_timing do
  sleep(0.1)
  puts 'This operation took some time'
end
