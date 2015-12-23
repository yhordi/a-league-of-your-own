require "test_helper"

class StandingTest < ActiveSupport::TestCase
  def standing
    @standing ||= Standing.new
  end

  def test_valid
    assert standing.valid?
  end
end
