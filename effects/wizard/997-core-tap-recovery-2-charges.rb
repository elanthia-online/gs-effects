Effect.new("Core Tap Recovery (2 Charges)", 997) do
  def availability
    "self-cast"
  end
  def duration
    s = Spell['Core Tap Recovery (1 Charge)'];s.timeleft > 0.0 ? s.timeleft : 1
  end
end