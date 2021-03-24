# 機車：

# 不計時數，每天 20 元
# 汽車

# 前 2 個小時，每小時 40 元；超過 2 小時之後每小時 30 元。
# 未滿一小時以一小時計費。
# 停車費每天最高上限為 500 元。


# 請完成以下計算公式

def calc_parking_fee(vehicle_type, parking_hour)
    fee = 0
    parking_hour = parking_hour.ceil  #ceil為一方法 作用於int
  case vehicle_type
  when :motocycle
    fee = 20
  when :car
    if parking_hour <= 2
        fee = parking_hour * 40
    else 
        fee = 80 + (parking_hour-2) * 30
    end

    if fee >= 500
        fee = 500 # fee = 500 if fee >= 500
    end
    fee  #return fee
  end

end

puts calc_parking_fee(:motocycle, 2)  # 印出 20
puts calc_parking_fee(:motocycle, 8)  # 印出 20

puts calc_parking_fee(:car, 1.5)      # 印出 80
puts calc_parking_fee(:car, 4)        # 印出 140
puts calc_parking_fee(:car, 5.5)      # 印出 200
puts calc_parking_fee(:car, 18)       # 印出 500
