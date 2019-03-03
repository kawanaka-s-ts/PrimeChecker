class PrimeChecker
  def check(number)
    # 偶数は２以外素数ではないので除外する
    # 要素が２より小さい時、falseを返す
    return false if number < 2
    # 要素が２の時、trueを返す
    return true if number == 2
    # 要素を２で割った時余りがでない時(2で割り切れる時)、falseを返す
    return false if number % 2 == 0
    # 偶数は排除しているので、奇数の場合のみを考える
    # 奇数で最小は3
    i = 3
    # iがnumberの平方根以下の間繰り返す
    while i <= number ** 0.5
      # numberがiで割り切れた時、falseを返す
      return false if number % i == 0
      # iを2増やす
      i += 2
    end
    # trueを返す
    return true
  end
end
