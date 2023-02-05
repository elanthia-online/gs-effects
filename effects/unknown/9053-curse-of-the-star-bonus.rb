Effect.new("Curse of the Star (bonus)", 9053) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    20
  end
  def start_messages
   Regexp.union(
      %r{You acquire a certain murky complexion, and you feel more deft\.},
      %r{Your complexion grows murkier\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your murky complexion fades away, and you feel less deft\.},
    )
  end
end