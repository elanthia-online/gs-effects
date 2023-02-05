Effect.new("Lichbane", 9006) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    10
  end
  def start_messages
   Regexp.union(
      %r{You feel more courageous as a \w+ aura appears about you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The sense of courage departs as the \w+ aura fades from about you\.},
    )
  end
end