def solve(a0, a1, a2, b0, b1, b2)
  alice = []
  bob = []
  alice.push a0, a1, a2
  bob.push b0, b1, b2
  alice_score = 0
  bob_score = 0
  scores = []
  counter  = alice.length
  count = 0
  p counter
  alice.each_with_index do |alice_point, aindex|
    count += aindex
    bob.each_with_index do |bob_point, bindex|
      if aindex == bindex
        if alice_point != bob_point
          if alice_point > bob_point
            alice_score += 1
            p "alice scored: #{alice_score}"
          elsif alice_point < bob_point
            p "bob scored: #{bob_score}"
            bob_score += 1
          end
        end
      end
    end
  end
  return scores.push alice_score, bob_score
end

 p solve(5, 6, 7, 3, 6, 10)
