class Team
  attr_reader :team, :player, :couch, :point
  attr_writer :team, :player, :couch, :point

  def initialize(input_team, input_player, input_couch, input_score)
    @team = input_team
    @player = input_player
    @couch = input_couch
    @point = input_score
  end

  def add_player(name)
    @player.push(name)
  end

  def check_players(name)
    @player.include? name

  end

  def match_results(result)
    if result == "won"
      @point += 1
      if result == "lost"
        @point += 0
      end
    end
  end



end
