# i=1
# while i <= 30
#   if i==10 or i==20 or i==25
#     puts "ruby"
#     i+=1
#   else
#     puts "<3 ruby"
#     i+=1
#   end
# end
#
# times
# include?

# 30.times {|i| p [9, 19, 24].include?(i)}




# 30.times do |i|
#   if [9, 19, 24].include?(i) == true
#     p 'ruby'
#   else
#     p '<3 ruby'
#   end
# end



30.times { |i| p [9, 19, 24].include?(i) ? 'ruby' : '<3 ruby' }