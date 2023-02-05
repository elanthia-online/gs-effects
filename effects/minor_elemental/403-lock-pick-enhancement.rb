Effect.new("Lock Pick Enhancement", 403) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    0.5 + Stats.level / 60.0
  end
  def start_messages
   Regexp.union(
      %r{A scintillating light surrounds your hands\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The scintillating light fades from your hands\.},
    )
  end
  def mana_cost
    3
  end
end