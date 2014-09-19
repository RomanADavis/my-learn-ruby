def array_of_fixnums?(array)
  a = true
  array.each {|i| false unless i.is_a? fixnum}
  a
end