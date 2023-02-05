Effect.new("Provoke", 1235) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    3
  end
  def start_messages
   Regexp.union(
      %r{You focus inward, drawing on all of your unrest and unsettled indignation\.  Before you, a ball of blanched fire winks into existence\.  You feed it your anger, your pettiness and your hate, watching it swell and grow\.  Tendrils of white flame extend from the miniature sun, snaking out to lash the air\.  Pouring the last, deepest remnants of your vitriol, you unleash the full power of your rage\.  It spreads like an inferno, overtaking all in its path, battering them with the entirety of your darkest thoughts\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The sense of anger in the air, previously hanging like a vitriolic cloud, laced with blanched fire, fades and then disappears\.},
    )
  end
  def mana_cost
    35
  end
end