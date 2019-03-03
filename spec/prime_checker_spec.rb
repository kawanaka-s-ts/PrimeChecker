require "spec_helper"
require "prime_checker"

describe PrimeChecker do
  let(:prime_checker) {PrimeChecker.new}
  describe "#check" do
    context "素数を渡した場合" do
      it "trueを返す" do
        expect(prime_checker.check(2)).to eq true
      end
    end

    context "素数ではない数値を渡した場合" do
      it "falseを返す" do
        expect(prime_checker.check(4)).to eq false
      end
    end
  end
end
