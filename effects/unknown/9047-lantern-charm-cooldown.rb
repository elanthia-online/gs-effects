Effect.new("Lantern Charm Cooldown", 9047) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    1440
  end
  def start_messages
   Regexp.union(
      %r{The flame within the lantern builds and brightens, escalating rapidly from bright to blinding\.  A heady rush overcomes you as the charm's radiance suffuses your flesh and falls, like a glowing veil, over your vision\.  Heat blossoms within your core, and a soft voice promises, "While hearth and home are firm in your heart, they cannot be more than a breath away from your lungs\."},
    )
  end
end