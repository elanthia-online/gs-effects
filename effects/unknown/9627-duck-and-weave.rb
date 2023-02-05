Effect.new("Duck and Weave", 9627) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    0.5
  end
  def start_messages
   Regexp.union(
      %r{You balance your posture and narrow your eyes, preparing to misdirect your foes' attacks\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You relax your posture and blink to clear your eyes\.},
    )
  end
  def stamina_cost
    (if Spell[9052].active?; 90; else; 30; end)*((Spell[1213].active? and defined?(Spell[1213].stamina_reduction)) ? (1-(Spell[1213].stamina_reduction/100.0)) : 1)
  end
end