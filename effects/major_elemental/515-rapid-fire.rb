Effect.new("Rapid Fire", 515) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{You feel the magic surge through you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel the surge of magic depart\.},
    )
  end
  def mana_cost
    15
  end
end