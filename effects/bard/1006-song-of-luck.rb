Effect.new("Song of Luck", 1006) do
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
      %r{As (?:you|[A-Z][a-z]+) sings?, the air sparkles briefly (?:with tiny flashing motes of light before returning to normal|around you)\.  You feel strangely lucky!},
    )
  end
  def end_messages
    Regexp.union(
      %r{The air stops shimmering around you(?: and your group)?\.},
    )
  end
  def mana_cost
    6+([Spells.bard-6,0].max/4)
  end
  def renew_cost
    3+([Spells.bard-6,0].max/8)
  end
end