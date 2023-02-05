Effect.new("Pestilence", 716) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.sorcerer
  end
  def start_messages
   Regexp.union(
      %r{A cankerous ripple of vesicles temporarily disfigures your face and travels down your body, leaving a sickly green miasma as it disappears\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You exhale the last of a virulent green mist\.},
    )
  end
  def mana_cost
    16
  end
end