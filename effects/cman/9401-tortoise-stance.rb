Effect.new("Tortoise Stance", 9401) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    240
  end
  def start_messages
   Regexp.union(
      %r{You (?:assume|re-settle into) the Stance of the Tortoise, holding back your offensive power in order to maximize your defense\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You relax from your continuous efforts to maximize your defense\.},
    )
  end
  def stamina_cost
    20
  end
end