Effect.new("Weapon Guardant Thrusts", 9659) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    20
  end
  def start_messages
   Regexp.union(
      %r{Retaining a defensive profile, you raise your .+ in a hanging guard and prepare to unleash a barrage of guardant thrusts upon a .+!},
    )
  end
  def end_messages
    Regexp.union(
      %r{You complete your assault, your weight on your rear foot as you snap your .+ back to a defensive angle\.},
      %r{Distracted, you hesitate, and in doing so lose the rhythm of your assault\. You shift your grip on your .+ to a more neutral position and watch for new opportunities\.},
    )
  end
end