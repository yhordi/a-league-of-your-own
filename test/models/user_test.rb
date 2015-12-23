require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:jaime)
    @game = games(:baseball)
    @user.games << @game
    @no_name = users(:no_name)
    @no_pass = users(:no_pass)
  end

  def teardown
    @user.destroy!
  end

  def test_standings
    assert_kind_of Standing::ActiveRecord_Associations_CollectionProxy, @user.standings
  end

  def test_games_through_standings
    assert_includes @user.games, @game
  end

  def test_invalid_without_name
    refute @no_name.valid?
  end

  def test_invalid_without_name
    refute @no_pass.valid?
  end

  def test_valid
    assert @user.valid?
  end
end
