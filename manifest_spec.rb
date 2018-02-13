require_relative 'manifest'
require 'minitest/autorun'

class ManifestTest < MiniTest::Test
  def setup
    @flyer1 = Flyer.new("John Public", "jp@example.com", 200_000, :platinum)
    @flyer2 = Flyer.new("Jane Appleseed", "jane@example.com", 2000)

    @manifest = Manifest.new
    @manifest.add_flyer(@flyer1)
    @manifest.add_flyer(@flyer2)
  end

  def test_manifest_contains_Flyers
    assert_equal @flyer1, @manifest.flyers[0]
    assert_equal @flyer2, @manifest.flyers[1]
  end

  def test_manifest_prints_platinum_and_coach_flyers
    skip
  end

end