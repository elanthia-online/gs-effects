Effect.new("Relieve Burden", 314) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.cleric
  end
  def start_messages
   Regexp.union(
      %r{A glittering golden collection bowl materializes above you\.  It slowly tips upside down, causing a shower of silver sparks to rain down upon your body, then vanishes\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{An ethereal golden collection bowl drifts out of your body, then vanishes\.},
    )
  end
  def mana_cost
    c = 14; r = 0; s = 4; c += 0.5 while (Skills.slblessings >= (r += (s += 1))); c
  end
end