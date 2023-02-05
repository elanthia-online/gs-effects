Effect.new("Symbol of Protection", 9806) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    Society.rank / 3.0
  end
  def start_messages
   Regexp.union(
      %r{You feel a layer of protection surround you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The layer of protection fades away\.},
    )
  end
end