require_relative '../lib/policy_ocr'

describe PolicyOcr do
  it "loads" do
    expect(PolicyOcr).to be_a Module
  end

  it 'loads the sample.txt' do
    expect(fixture('sample').lines.count).to eq(44)
  end


  # describe "policy_converter" do
  #   context "given the 'sample'" do
  #     it "converts policies" do
  #       arr = [
  #               000000000, 111111111, 222222222, 333333333,
  #               444444444, 555555555, 666666666, 777777777,
  #               888888888, 999999999, 123456789
  #             ]
  #       expect(PolicyOcr.policy_converter('spec/fixtures/sample.txt')).to eq(array)
  #     end
  #   end
  # end


end
