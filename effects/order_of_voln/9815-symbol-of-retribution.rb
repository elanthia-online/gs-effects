Effect.new("Symbol of Retribution", 9815) do
  def type
    "attack/utility"
  end
  def availability
    "all"
  end
  def duration
    Society.rank / 6.0
  end
  def start_messages
   Regexp.union(
      %r{You feel an aura of righteous wrath surround you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The aura of righteous wrath leaves you\.},
    )
  end
end