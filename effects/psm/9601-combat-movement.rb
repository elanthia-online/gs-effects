Effect.new("Combat Movement", 9601) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    3
  end
  def start_messages
   Regexp.union(
      %r{Your body becomes tense and ready for action\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your close concentration on your movements fades away\.},
    )
  end
  def stamina_cost
    5
  end
end