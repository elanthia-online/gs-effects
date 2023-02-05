Effect.new("Symbol of Courage", 9805) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    Society.rank / 6.0
  end
  def start_messages
   Regexp.union(
      %r{You feel more courageous\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel the extra courage wane\.},
    )
  end
end