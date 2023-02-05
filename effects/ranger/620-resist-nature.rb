Effect.new("Resist Nature", 620) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.ranger
  end
  def start_messages
   Regexp.union(
      %r{You call upon the natural energies of your surroundings and, with faintly visible (?:green-gold|red-gold|frosty white|blue-violet|misty grey) filaments, weave a web of protection against (?:nature|heat|cold|lightning|steam).},
    )
  end
  def end_messages
    Regexp.union(
      %r{The (?:green-gold|red-gold|frosty white|blue-violet|misty grey) web of protection against (?:nature|heat|cold|lightning|steam) falls away from you, unraveling as it fades.},
    )
  end
  def mana_cost
    20
  end
end