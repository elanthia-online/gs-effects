Effect.new("Arcane Decoy", 1701) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    15 + (Skills.magicitemuse/6.0)
  end
  def start_messages
   Regexp.union(
      %r{A brilliant, rapidly shifting aura swirls around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The brilliant, rapidly shifting aura around you shimmers and (?:flickers briefly before fading\.|bursts in a bright flash!)},
    )
  end
  def mana_cost
    1
  end
end