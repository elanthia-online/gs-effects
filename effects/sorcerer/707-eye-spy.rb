Effect.new("Eye Spy", 707) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    19 + Spells.sorcerer
  end
  def start_messages
   Regexp.union(
      %r{Casually you push your finger into your eye socket and cup it around the throbbing eyeball\.  With a little leverage you pop the eye from your skull and watch as it sprouts little batlike wings and begins to hover before you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You hear a soft hiss as your wandering eye rushes towards you\.  You reach out and catch the squishy globe and quickly press it back into your eye socket\.  After a few blinks it seems to seat itself properly\.  You wipe off some gooey red residue with your sleeve, and feel yourself once again presentable\.},
    )
  end
  def mana_cost
    7
  end
end