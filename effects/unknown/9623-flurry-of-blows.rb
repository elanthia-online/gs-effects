Effect.new("Flurry of Blows", 9623) do
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
      %r{You (?:assume|re-settle into) a stance suitable to unleash a flurry of blows\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You relax from a stance suitable to unleash a flurry of blows\.},
    )
  end
  def stamina_cost
    30
  end
end