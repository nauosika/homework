# 把陣列 [1, 3, 4, 1, 7, nil, 7] 由小到大排序，並且移除 nil 以及重複的數字。
p [1, 3, 4, 1, 7, nil, 7].compact.sort #有nil時不給sort
p [1, 3, 4, 1, 7, nil, 7].uniq.compact #有uniq會自動sort


# 計算 1 ~ 100 之間所有"單數"的總和
p (1..100).sum #沒看清楚問題的答案
p (1..100).select {|x|x.odd?}.sum
