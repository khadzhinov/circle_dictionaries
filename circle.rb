def can_segment_string(s, d)
  word_set = d.to_set
  n = s.length

  dp = Array.new(n + 1, false)
  dp[0] = true

  (1..n).each do |i|
    (0...i).each do |j|
      if dp[j] && word_set.include?(s[j...i])
        dp[i] = true
        break
      end
    end
  end

  dp[n]
end

s = "двесотни"
d = %w[две сотни тысячи]
result = can_segment_string(s, d)
puts result
