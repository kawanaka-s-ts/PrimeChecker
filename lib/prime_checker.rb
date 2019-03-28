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
    i = 3
    # list_maxは比較要素listの最大値（調べる値の平方根）
    list_max = number ** 0.5
    # 奇数の配列を作成する（最大値はlist_max）
    list = []
    # iがlist_maxよりも小さい間繰り返す
    while i < list_max
      # listにiの値を格納
      list.push(i)
      # iを2増やす
      i += 2
    end
    
    # indexに0を代入
    index = 0
    # indexが要素数より少ない間繰り返す
    while index < list.size
      # jはlistのindex
      j = index + 1
      # jが要素数より少ない間繰り返す
      while j < list.size
        # もしlist[j]がlist[index]が割り切れた場合
        if list[j] % list[index] == 0
          # listから要素を削除する
          list.delete(list[j])
        end
        # jを1増加する
        j += 1
      end
      # indexを1増やす
      index += 1
    end
    
    # indexの値が要素数より少ない間繰り返す
    while index < list.size
      # numberがiで割り切れた時、falseを返す
      return false if number % list[index] == 0
      # iに素数リストの値を順に入れていく
      index += 1
    end
    # trueを返す
    true
  end
end
