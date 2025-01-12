require_relative '../lib/policy_ocr'

# policy number: 3 4 5 8 8 2 8 6 5
# position names: d9 d8 d7 d6 d5 d4 d3 d2 d1
# checksum calculation:
# (d1+(2*d2)+(3*d3)+...+(9*d9)) mod 11 = 0

describe PolicyOcr do
  it "loads" do
    expect(PolicyOcr).to be_a Module
  end

  it 'loads the sample.txt' do
    expect(fixture('sample').lines.count).to eq(44)
  end

  it 'validates policy true' do
    expect(PolicyOcr.checksum_valid('345882865')).to eq(true)
  end

end
