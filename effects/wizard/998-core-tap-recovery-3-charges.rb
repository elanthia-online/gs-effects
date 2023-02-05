Effect.new("Core Tap Recovery (3 Charges)", 998) do
  def availability
    "self-cast"
  end
  def duration
    s = Spell['Core Tap Recovery (2 Charges)'];s.timeleft > 0.0 ? s.timeleft : 1
  end
end