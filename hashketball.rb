# Write your code here!
require "pry"

def game_hash
##
game_hash = {
  :home => {
      :team_name => "Brooklyn Nets" ,
      :colors => ["Black","White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks =>1,
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks =>7,
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15,
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks =>5,
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks =>1,
        }
  }
},
  :away => {
    :team_name => "Charlotte Hornets" ,
    :colors => ["Turquoise","Purple"],
    :players => {
      "Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks =>2,
      },
      "Bismak Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks =>10,
      },
      "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5,
      },
      "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks =>0,
      },
      "Brendan Haywood" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks =>12,
      }
      }
    }
}
end

def num_points_scored(player)
##
points = ""
# if home includes player-string, points is equal to home,players,pstring,points
if game_hash[:home][:players].keys.include?(player)
  points = game_hash[:home][:players][player][:points]
# if away includes player-string, points is equal to away,players,pstring,points
elsif game_hash[:away][:players].keys.include?(player)
  points = game_hash[:away][:players][player][:points]
else
  points=nil
end
points
end

def shoe_size(player)
##
size = ""
# if home includes player-string, points is equal to home,players,pstring,points
if game_hash[:home][:players].keys.include?(player)
  size = game_hash[:home][:players][player][:shoe]
# if away includes player-string, points is equal to away,players,pstring,points
elsif game_hash[:away][:players].keys.include?(player)
  size = game_hash[:away][:players][player][:shoe]
else
  size=nil
end
size
end

def team_colors(team)
##
colors = []
if game_hash[:home][:team_name] == team
  colors = game_hash[:home][:colors]
elsif game_hash[:away][:team_name] == team
  colors = game_hash[:away][:colors]
else
  colors= nil
end
colors
end

def team_names
##
teams = [game_hash[:home][:team_name],game_hash[:away][:team_name]]
end

def player_numbers(team)
## takes in an argument of a team name and returns an array of the jersey number's for that team
##
jerseys = []
if team == game_hash[:home][:team_name]
  game_hash[:home][:players].each do |k,v|
    jerseys.push(game_hash[:home][:players][k][:number])
  end
elsif team == game_hash[:away][:team_name]
  game_hash[:away][:players].each do |k,v|
    jerseys.push(game_hash[:away][:players][k][:number])
  end
else
  puts "Not a team!"
end
jerseys
end

def player_stats(player)
## takes in an argument of a player's name and returns a hash of that player's stats
stat_hash = {}
if game_hash[:home][:players].keys.include?(player)
  stat_hash = game_hash[:home][:players][player]
elsif game_hash[:away][:players].keys.include?(player)
  stat_hash = game_hash[:away][:players][player]
else
  stat_hash = nil
end
stat_hash
end

def big_shoe_rebounds
## return the number of rebounds associated with the player that has the largest shoe size
## find the player with the largest shoe size
## return that player's number of rebounds
biggest = 0
rebounds = 0
## iterate and compare shoe sizes (biggest = 0, if x > biggest, biggest = x)
game_hash[:home][:players].each do |k, v|
  if game_hash[:home][:players][k][:shoe] > biggest
    biggest = game_hash[:home][:players][k][:shoe]
    rebounds = game_hash[:home][:players][k][:rebounds]
  end
end
game_hash[:away][:players].each do |k, v|
  if game_hash[:away][:players][k][:shoe] > biggest
    biggest = game_hash[:away][:players][k][:shoe]
    rebounds = game_hash[:away][:players][k][:rebounds]
  end
end
rebounds
end
puts game_hash[:away][:players].keys
puts game_hash[:away][:players].values
puts game_hash[:away][:players]["Jeff Adrien"][:shoe]



def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
      team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        binding.pry

        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        data.each do |data_item|
            binding.pry
      end
    end
  end
end
#puts game_hash[:away][:players].keys.include?("Jeff Adrien")
#puts game_hash[:away][:players].keys
#puts game_hash[:away][:players]["Jeff Adrien"][:points]

#good_practices
