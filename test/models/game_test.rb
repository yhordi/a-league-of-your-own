require "test_helper"

class GameTest < ActiveSupport::TestCase
  def setup
    @game = games(:soccer)
    @user = users(:rodge)
    @game.users << @user
  end

  def test_standings
    assert_kind_of Standing::ActiveRecord_Associations_CollectionProxy, @game.standings
  end

  def test_users_through_standings
    assert_includes @game.users, @user
  end

  def test_valid
    assert @game.valid?
  end
end
