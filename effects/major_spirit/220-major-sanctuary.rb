Effect.new("Major Sanctuary", 220) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    10 + (Spells.majorspiritual/2.0)
  end
  def start_messages
   Regexp.union(
      %r{A brilliant light bathes you as your surroundings blur for a moment\.\.\.},
      %r{Whipping winds carry the hot, metallic taste of lightning to you as your surroundings blur\.\.\.},
      %r{A deep shadow descends upon you and your breath is briefly muffled as your vision blurs with darkness\.\.\.},
      %r{A shiver of wind touches your breath and you feel your eyelashes grow thick with a coating of snow\.  You lift your eyes to the sky and white blurs your vision\.\.\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{A bright light surrounds you and your visions of sanctuary slowly fade\.\.\.},
      %r{The blinding flash of lightning shatters the chamber in a cloud of wind and light, causing it to dissolve around you\.\.\.},
      %r{Suddenly the candles at the heart of the room go out and you are plunged into a deep darkness that obscures your vision of the world around you\.\.\.},
      %r{Rising suddenly, the chill air sends a flurry of snow towards you and your vision swims with white flakes\.\.\.},
    )
  end
  def mana_cost
    20
  end
end