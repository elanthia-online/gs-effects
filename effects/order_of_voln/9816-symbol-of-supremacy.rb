Effect.new("Symbol of Supremacy", 9816) do
  def type
    "offensive"
  end
  def availability
    "self-cast"
  end
  def duration
    Society.rank / 6.0
  end
  def start_messages
   Regexp.union(
      %r{You feel infused with a collective knowledge on the undead and their weaknesses\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The rush of collective knowledge of the undead fades from your mind\.},
    )
  end
end