Effect.new("REIM Attack Boost", 9301) do
  def type
    "bonus"
  end
  def availability
    "all"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{Crackling wisps of ethereal energy surround your body, bolstering your attack\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The crackling wisps of ethereal energy surrounding your body fade away\.},
    )
  end
end