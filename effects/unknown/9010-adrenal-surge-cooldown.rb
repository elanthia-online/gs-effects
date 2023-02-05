Effect.new("Adrenal Surge Cooldown", 9010) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    if Spell[9010].active?; Spell[9010].timeleft; else; 5; end
  end
  def start_messages
   Regexp.union(
      %r{You feel a surge of energy that carries you to your feet in a heartbeat, with no sense of effort whatsoever!},
      %r{You feel a momentary surge of energy rush through you giving you strength\.},
      %r{You feel a surge of energy shoot through you!},
    )
  end
end