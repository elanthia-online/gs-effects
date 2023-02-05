Effect.new("Melgorehn's Aura", 913) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.wizard
  end
  def start_messages
   Regexp.union(
      %r{A luminescent aura begins to swirl around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{A luminescent aura fades from around you\.},
    )
  end
  def mana_cost
    13 + (([Spells.wizard,Stats.level].min - 13) / 3.0).round
  end
end