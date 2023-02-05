Effect.new("Feather Charm", 9080) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    30
  end
  def start_messages
   Regexp.union(
      %r{Oddly enough, you feel somewhat more buoyant\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel somewhat less buoyant\.},
    )
  end
end