Effect.new("Duck and Weave Cooldown", 9052) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    5
  end
  def start_messages
   Regexp.union(
      %r{You balance your posture and narrow your eyes, preparing to misdirect your foes' attacks\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your recent exploits of weaving through your foes' attacks no longer strains your body and mind\.},
    )
  end
end