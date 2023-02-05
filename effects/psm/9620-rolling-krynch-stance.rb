Effect.new("Rolling Krynch Stance", 9620) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    240
  end
  def start_messages
   Regexp.union(
      %r{You (?:assume|re-settle into) the Rolling Krynch Stance\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You relax from the Rolling Krynch Stance\.},
    )
  end
  def stamina_cost
    20
  end
end