Effect.new("Council Punishment", 9012) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    if defined?(line) and (line =~ /[0-9]+/); line.slice(/[0-9]+/).to_f; else; 20; end
  end
  def start_messages
   Regexp.union(
      %r{powers for [0-9]+ minutes, so that you might have},
      %r{Your punishment does not end for another [0-9]+ minutes?\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{the fold\.  DO NOT FAIL ME AGAIN!"},
    )
  end
end