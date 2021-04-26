def printer_error(s)
    "#{s.scan(/[^a-m]/).count}/#{s.length}"   
    #https://rubular.com/
end

RSpec.describe do
  it "不該出現的字" do
    expect(printer_error("aaabbbbhaijjjm")).to eq '0/14'
    expect(printer_error("aaaxbbbbyyhwawiwjjjwwm")).to eq '8/22'
    expect(printer_error("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz")).to eq '3/56'
  end
end


def split_the_bill(bill)
  avg = bill.values.sum / bill.count.to_f
  bill.transform_values {|value| value - avg }
  #transform_values 替換"值"
end

RSpec.describe do
  it "帳單計算" do
    expect(split_the_bill('A' => 20, 'B' => 15, 'C' => 10)).to eq({'A' => 5.00, 'B' => 0.00, 'C' => -5.00})
    expect(split_the_bill('A' => 40, 'B' => 25, 'X' => 10)).to eq({'A' => 15.00, 'B' => 0.00, 'X' => -15.00})
  end
end