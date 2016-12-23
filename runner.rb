#!/usr/bin/env ruby

require_relative "prime_table"

if ARGV.any?
  if ARGV.length > 1
    puts "\nExceeded maximum number of arguments"
    puts "Please use the [--help] flag for more options"
  elsif
    if ARGV[0] == "--help"
      puts "Usage:"
      puts "  Please specify the size of your table (if desired)\n"
      puts "  If size is not specified, the size will default to 10"
      puts "\nOptions:\n"
      puts "  [size]       # size of prime multiplication table"
      puts "  --help        # show usage and options"
    else
      table = PrimeTable.new(ARGV[0].to_i)
      puts ""
      table.print_table
    end
  end
else
  table = PrimeTable.new(10)
  puts ""
  table.print_table
end
