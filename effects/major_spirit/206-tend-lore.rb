Effect.new("Tend Lore", 206) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{You feel a knowledge of the treatment of injuries flow through you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel the knowledge of the treatment of injuries dissipate\.},
    )
  end
  def mana_cost
    6
  end
end