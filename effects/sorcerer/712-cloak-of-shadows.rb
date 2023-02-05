Effect.new("Cloak of Shadows", 712) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.sorcerer
  end
  def start_messages
   Regexp.union(
      %r{A shadowy patch of ether rises up through the (?:floor|ground) to encompass you, swiftly sinking into your skin\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{A dark shadow seems to detach itself from your body, swiftly dissipating into the air\.},
    )
  end
  def mana_cost
    12 + [(([Spells.sorcerer,Stats.level].min - 12) / 3),0].max
  end
end