Effect.new("Sigil of Defense", 9707) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    5
  end
  def start_messages
   Regexp.union(
      %r{A shimmering aura surrounds you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The shimmering aura fades from around you\.},
    )
  end
  def mana_cost
    5
  end
  def stamina_cost
    5
  end
end