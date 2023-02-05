Effect.new("Griffin's Voice", 9628) do
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
      %r{You assume the Griffin's Voice stance, altering your breathing patterns to maximize the efficiency of your warcries\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You return to your normal breathing patterns\.},
    )
  end
  def stamina_cost
    20
  end
end