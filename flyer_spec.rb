require 'minitest/autorun'
require_relative 'flyer'

class FlyerTest < Minitest::Test
  def test_a_flyer_has_a_name_attribute
    flyer = Flyer.new("John Q. Public", "jq@example.com", 1_234)

    result = flyer.name
    expected = "John Q. Public"
    assert_equal expected, result
  end

  def test_a_flyer_has_an_email_attribute
    flyer = Flyer.new("John Q. Public", "jq@example.com", 1_234)

    result = flyer.email
    expected = "jq@example.com"
    assert_equal expected, result
  end

  def test_a_flyer_has_a_miles_flown_attribute
    flyer = Flyer.new("John Q. Public", "jq@example.com", 1_234)

    result = flyer.miles_flown
    expected = 1_234
    assert_equal expected, result
  end

  def test_a_flyer_has_a_status_attribute
    flyer = Flyer.new("John Q. Public", "jq@example.com", 1_234, :silver)

    result = flyer.status
    expected = :silver
    assert_equal expected, result
  end

  def test_a_flyer_has_a_default_status_of_bronze
    flyer = Flyer.new("John Q. Public", "jq@example.com", 1_234)

    result = flyer.status
    expected = :bronze
    assert_equal expected, result
  end
end