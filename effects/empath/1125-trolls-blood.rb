Effect.new("Troll's Blood", 1125) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.empath
  end
  def start_messages
   Regexp.union(
      %r{Dark red droplets coalesce upon your skin before sinking into your flesh\.  (?:Your heart stutters for an instant before settling into a steady, powerful rhythm|Your heart, already beating strongly with Troll's Blood, accelerates with new vigor as your body accepts the new infusion)\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your heart staggers briefly before slowing to a more regular speed\.  Dark red droplets seep out of your skin and evaporate as the influence of Troll's Blood leaves you\.},
    )
  end
  def mana_cost
    25
  end
end