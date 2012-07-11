require "test_helper"

describe Restfolia::MediaTypes::Json do

  subject { Restfolia::MediaTypes::Json.new }

  it "#encode" do
    subject.encode(:test => "value").must_equal("{\"test\":\"value\"}")
  end

  it "#decode" do
    subject.decode("{\"test\":\"value\"}").must_equal(:test => "value")
  end

  it "#decode invalid json" do
    lambda do
      subject.decode("<html>error</html>")
    end.must_raise(Restfolia::MediaTypes::DecodeError)
  end

end
