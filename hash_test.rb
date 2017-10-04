gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class HashTest < Minitest::Test
  def test_empty
    assert_equal true, {}.empty?
    assert_equal false, {"a" => "apple"}.empty?
  end

  def test_access
    ages = {16 => ["Alice", "Bob"], 24 => ["Charlie", "Dave"], 37 => ["Eve"]}
    assert_equal ["Alice", "Bob"], ages[16]
    assert_equal ["Eve"], ages[37]
  end

  def test_assignment

    stuff = {"a" => ["aardvark", "apple"], "b" => ["butcher", "ballerina"]}
    stuff["c"] = ["cook", "caramel candy"]
    assert_equal ["cook", "caramel candy"], stuff["c"]
    stuff["b"] = "brandy"
    assert_equal "brandy", stuff["b"]
    stuff["a"] = stuff["a"] + ["apricot"]
    assert_equal ["aardvark", "apple", "apricot"], stuff["a"]
  end

  def test_keys
    assert_equal [], {}.keys
    assert_equal [1,2], {1 => "one", 2 => "two"}.keys
    assert_equal ["a","banana"], {"a" => "apple", "banana" => "b"}.keys
  end

  def test_values

    assert_equal [], {}.values
    assert_equal ["one", "two"], {1 => "one", 2 => "two"}.values
    assert_equal ["apple","b"], {"a" => "apple", "banana" => "b"}.values
  end

  def test_include
    assert_equal false, {}.include?("a")
    assert_equal true, {"a" => "apple"}.include?("a")
    assert_equal false, {"a" => "apple"}.include?("apple")

  end

  def test_member
    assert_equal false, {}.member?("a")
    assert_equal true, {"a" => "apple"}.member?("a")
    assert_equal false, {"a" => "apple"}.member?("apple")

  end

  def test_invert
    h1 = {"a" => "apple", "b" => "banana"}.invert
    expected_h1 = {"apple" => "a", "banana" => "b"}
    assert_equal expected_h1, h1

    h2 = {1 => "one", 2 => "two"}.invert
    expected_h2 = {"one" => 1, "two" => 2}
    assert_equal expected_h2, h2
  end

  def test_length
    assert_equal 0, {}.length
    assert_equal 1, {"a" => "apple"}.length
    assert_equal 2, {"a" => "apple", "b" => "banana"}.length
  end

  def test_merge
    h1 = {}.merge({})
    h2 = {}.merge({"a" => "apple"})
    h3 = {"a" => "apple"}.merge({"b" => "banana"})
    h4 = {"a" => "apple"}.merge({"a" => "avocado", "b" => "banana"})
    h5 = {"a" => "apple", "b" => "banana"}.merge({"b" => "breadfruit"})

    expected_h1 = {}
    expected_h2 = {"a" => "apple"}
    expected_h3 = {"a" => "apple", "b"=>"banana"}
    expected_h4 = {"a"=> "apple","a" => "avocado", "b" => "banana"}
    expected_h5 = {"a" => "apple", "b" => "breadfruit"}

    assert_equal expected_h1, h1
    assert_equal expected_h2, h2
    assert_equal expected_h3, h3
    assert_equal expected_h4, h4
    assert_equal expected_h5, h5
  end

  def test_update
    skip
    h1 = {}.update({})
    h2 = {}.update({"a" => "apple"})
    h3 = {"a" => "apple"}.update({"b" => "banana"})
    h4 = {"a" => "apple"}.update({"a" => "avocado", "b" => "banana"})
    h5 = {"a" => "apple", "b" => "banana"}.update({"b" => "breadfruit"})

    expected_h1 = {}
    expected_h2 = {"a" => "apple"}
    expected_h3 = {"a" => "apple", "b" => "banana"}
    expected_h4 = {"a" => "avocado", "b" => "banana"}
    expected_h5 = {"a" => "apple", "b" => "breadfruit"}

    assert_equal expected_h1, h1
    assert_equal expected_h2, h2
    assert_equal expected_h3, h3
    assert_equal expected_h4, h4
    assert_equal expected_h5, h5
  end
end
