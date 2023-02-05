Effect.new("Kai's Triumph Song", 1007) do
  def type
    "offense/bonus"
  end
  def availability
    "self-cast"
  end
  def duration
    Spellsong.timeleft
  end
  def start_messages
   Regexp.union(
      %r{Your (?:spirit is|spirits are) lifted by the verses praising Kai\.$|^[A-Z][a-z]+ sings of Kai's many triumphs, lifting your spirits\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your (?:spirit is|spirits are|spirits, and those of your group, are) no longer lifted by stories of Kai's Triumphs\.},
    )
  end
  def mana_cost
    7+[[Spells.bard-7,0].max,13].min
  end
  def renew_cost
    2+[[Spells.bard-7,0].max,13].min
  end
end