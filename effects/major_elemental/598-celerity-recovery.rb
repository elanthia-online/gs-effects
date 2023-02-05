Effect.new("Celerity Recovery", 598) do
  def availability
    "self-cast"
  end
  def duration
    3
  end
  def start_messages
   Regexp.union(
      %r{You suddenly feel less light\-footed and your feet take on a leaden quality\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The leaden quality leaves your feet\.},
    )
  end
end