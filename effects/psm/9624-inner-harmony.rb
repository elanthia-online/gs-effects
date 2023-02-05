Effect.new("Inner Harmony", 9624) do
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
      %r{You (?:center your mind, body and soul and enter a|continue in your) state of inner harmony\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel your state of inner harmony slip away\.},
    )
  end
  def stamina_cost
    40
  end
end