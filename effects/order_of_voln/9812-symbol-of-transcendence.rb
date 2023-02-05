Effect.new("Symbol of Transcendence", 9812) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    0.5
  end
  def start_messages
   Regexp.union(
      %r{(?:With difficulty, you manage to will yourself|You step) into the space between the corporeal and ethereal realms\.},
    )
  end
end