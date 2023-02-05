Effect.new("Premonition", 1220) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.minormental
  end
  def start_messages
   Regexp.union(
      %r{A flood of visions fills your mind and you strain to pick out your place amongst the countless blurred images and muted sound\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The visions slowly trickle from your mind, and you are left with the world before you once again\.},
    )
  end
  def mana_cost
    20 + ([([Spells.minormental,Stats.level].min - 20), 0].max/4)
  end
end