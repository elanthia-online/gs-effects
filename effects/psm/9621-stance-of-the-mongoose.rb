Effect.new("Stance of the Mongoose", 9621) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    240
  end
  def start_messages
   Regexp.union(
      %r{You (?:assume|re-settle into) the Stance of the Mongoose, ready to retaliate instantly against your foes\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You relax from the Stance of the Mongoose, no longer ready to retaliate instantly against your foes\.},
    )
  end
  def stamina_cost
    20
  end
end