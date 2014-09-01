print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)

if operator =~ /^t/
  calc = lambda { |n| n * number }
else
  calc = lambda { |n| n + number }
end

puts((1..10).collect(&calc).join(", "))

# if the last argument to a method is preceded with & (like in collect(&calc))
# ruby assumes that it is a Proc object (so &calc means that calc is a Proc)
#
# Steps:
#   1 Removes the Argument from the Parameter List
#   2 Convert the Proc object into a Block
#   3 Associate the Block with the Method
#
# So:
#   1 '&calc' is removed from the 'collect' Parameter List
#   2 '&calc' is converted into a Block
#   3 'collect' is called with the '&calc' Block
