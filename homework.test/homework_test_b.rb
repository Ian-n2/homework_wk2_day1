require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../homework_part_b')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestTeam < Minitest::Test

  def setup
    @game_team = Team.new("Cats", ["Ian"], "Gordon", 0)
  end

  def test_team_name
    assert_equal("Cats", @game_team.team)
  end

  def test_player_name
    assert_equal(["Ian"], @game_team.player)
  end

  def test_couch_name
    assert_equal("Gordon", @game_team.couch)
  end

  def test_change_couch
    @game_team.couch = "Peter"
    assert_equal("Peter", @game_team.couch)
  end

  def test_add_player
    @game_team.add_player("Joe")
    assert_equal(2, @game_team.player.length)
  end

  def test_check_players
    assert_equal(true, @game_team.check_players("Ian"))
  end

  def test_match_results
    @game_team.match_results("won")
    assert_equal(1, @game_team.point)
  end
end
