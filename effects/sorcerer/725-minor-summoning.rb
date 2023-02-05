Effect.new("Minor Summoning", 725) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    10 + (Spells.sorcerer/3.0) + (Skills.sldemonology/2.0)
  end
  def start_messages
   Regexp.union(
      %r{You trace an arcane sigil over your .+ while incanting\.  Your .+ glows momentarily, and you succeed in opening an interplanar rift from which you manage to pull .+\.},
      %r{You trace the runes on .+ to strengthen the binding between your .+ and this plane\.  You feel a bit of power leeched from your .+ as a spark follows your finger's path across the .+\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You sense that you will not be able to control .+ much longer so you incant arcanely while concentrating upon the .+\.  You gesture vividly causing a small interplanar rift to open.  The .+ is pulled through the rift\.},
    )
  end
  def mana_cost
    25
  end
end