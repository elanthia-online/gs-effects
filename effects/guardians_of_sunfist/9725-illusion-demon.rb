Effect.new("Illusion - Demon", 9725) do
  def type
    "timer"
  end
  def duration
    30
  end
  def start_messages
   Regexp.union(
      %r{You shift your gaze to your .+ and focus your energy upon creating the illusion of disguise\.  You move quickly towards .+, feeling your energy focus upon your fist and causing it to radiate with a black essence\.  At the last moment, you plunge your fist into the .+ of your .+\.  .+ suddenly erupts in a shroud of black essence and tries to recoil away from you\.  You focus your will upon the essence and .+, and watch as the creature begins to ripple\.  Piece by piece, the creature's form changes until .+ stands in its place and you withdraw your hand\.},
      %r{You glide your hand over .+, leaving rippling motes of color in the wake of your hand as you attempt to strengthen the flows of essence around .+\.  You sense a pulse as the motes disappear within .+, revitalizing the .+ into an impeccable illusion\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Droplets of inky black ichor begin to drip down from .+ and pool underneath as the veil of an illusion peels back\.  The visage of .+ begins to distort and reveals behind it .+\.  As the last droplet \*plops\* into the pool, it dissolves into mist that .+\.},
    )
  end
end