Effect.new("Mage Armor", 520) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + [Spells.majorelemental,Stats.level].min
  end
  def start_messages
   Regexp.union(
      %r{A layer of raw elemental energy forms around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The layer of raw elemental energy surrounding you dissipates\.},
    )
  end
  def mana_cost
    20
  end
end