Effect.new("Doomstone Curse", 9054) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    60
  end
  def start_messages
   Regexp.union(
      %r{You feel a strange, foreboding sensation as your hand touches the black doomstone\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The foreboding sensation recedes\.},
    )
  end
end