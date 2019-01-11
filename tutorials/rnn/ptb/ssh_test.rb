#!/usr/bin/env ruby

commands = File.read('ssh_test.sh').split("\n")
commands.each do |command|
  puts command

  begin
    system(command)
  rescue Interrupt
    puts 'skipping...'
  end
end

