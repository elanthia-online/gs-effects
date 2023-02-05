Effect.new("Chronomage Teleport Staff Cooldown", 9058) do
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
      %r{When the air around you settles and your mind calms, you realize that your very existence has been catapulted into the past\.  The sand in the hourglass is now in the upper bulb, trickling slowly into the lower chamber\.},
    )
  end
end