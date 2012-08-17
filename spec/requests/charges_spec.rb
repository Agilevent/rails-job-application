require "spec_helper"

describe "charges page" do
  before(:each) do
    load "#{Rails.root}/db/seeds.rb"
    get '/charges'
  end
  
  it "there are three lists on the screen. One for Successful charges, one for failed charges and one for the disputed charges" do
    assert_select ".failed"
    assert_select ".disputed"
    assert_select ".successful"
  end
  
  it "should have in the successful charges list 10 line items" do
    assert_select ".successful table tr.item", :count => 10
  end
  
  it "should have in the failed charges list 5 failed charges" do
    assert_select ".failed table tr.item", :count => 5
  end
  
  it "should have in the disputed charges list failed charges" do
    assert_select ".disputed table tr.item"
  end
end