class MillionNumbers

  def find_matches(num1, num2, num3)
    # # SOLUTION 1 -   0.251614   0.014979   0.266593 (  0.266559)
    # num1.intersection(num2, num3)

    # SOLUTION 2 -   1.124126   0.046036   1.170162 (  1.171640)
    num1 = num1.sort.uniq
    num2 = num2.sort.uniq
    num3 = num3.sort.uniq

    counts = {}

    num1.each do |num|
      counts[num] ||= 0
      counts[num] += 1
    end
    num2.each do |num|
      counts[num] ||= 0
      counts[num] += 1
    end
    num3.each do |num|
      counts[num] ||= 0
      counts[num] += 1
    end

    counts.select { |_number, count| count == 3 }.keys

    # # SOLUTION 3 -   0.132273   0.008047   0.140320 (  0.140277)
    # num1 & num2 & num3
  end
end