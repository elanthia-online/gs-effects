Effect.new("Fog Concealment", 9013) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    0.5
  end
  def start_messages
   Regexp.union(
      %r{Fog swirls and eddies about the area\.  Wispy grey tendrils writhe as they climb around your form until you are completely enshrouded in the mist\.  You feel confident that no one can see you behind your mask of fog\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The fog enshrouding you drifts off your form and gathers with the rest in the area\.},
    )
  end
end