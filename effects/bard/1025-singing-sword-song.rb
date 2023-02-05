Effect.new("Singing Sword Song", 1025) do
  def type
    "attack/utility"
  end
  def availability
    "all"
  end
  def duration
    Spellsong.timeleft
  end
  def start_messages
   Regexp.union(
      %r{An animated .+ appears and hovers near you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your animated .+ dissipates in a shower of sparkling motes of light\.},
      %r{You feel the magic of your animated .+ unravel and end\.},
    )
  end
  def mana_cost
    25
  end
  def renew_cost
    15
  end
end