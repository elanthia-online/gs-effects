Effect.new("Song of Noise", 1017) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    Spellsong.timeleft
  end
  def start_messages
   Regexp.union(
      %r{The surroundings respond to your piercing voice, disrupting the normal flow of mana\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The cacophony of sound finally passes away from the area\.|You stop singing Song of Noise\.},
    )
  end
  def mana_cost
    17
  end
  def renew_cost
    7
  end
end