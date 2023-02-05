Effect.new("Song of Mirrors", 1019) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    Spellsong.timeleft
  end
  def start_messages
   Regexp.union(
      %r{As you begin to sing a sibilant melody, shimmering mirror images of you appear in the area\.},
      %r{The mirror images surrounding you undulate and grow stronger\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The mirror images surrounding you undulate and fade away\.},
    )
  end
  def mana_cost
    19+((Spells.bard-19)/5)
  end
  def renew_cost
    8+((Spells.bard-19)/10)
  end
end