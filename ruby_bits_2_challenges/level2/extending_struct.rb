# Extending Struct
# Add a to_s method to the Game struct that returns a string containing the game's name, year, and system.

Game = Struct.new(:name, :year, :system) do
  def to_s
    "#{name} #{year} #{system}"
  end
end
