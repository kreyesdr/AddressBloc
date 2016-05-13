def greeting
  greet = ARGV.delete_at(0)
  ARGV.each do |ppl|
    puts "#{greet} #{ppl}"
  end
end

greeting




