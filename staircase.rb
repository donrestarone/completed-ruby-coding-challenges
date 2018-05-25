def staircase(n)
  height = n
  base = n
  print '' + ['#'] * (base - 3) * ''
  puts '' + ['#'] * (base - 2) * ''
  puts ' ' + ['#'] * (base - 1) * ''
  print ['#'] * base * ''
  puts ''

end

staircase(6)
