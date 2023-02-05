Effect.new("Arm of the Arkati", 1605) do
  def type
    "offense"
  end
  def availability
    "group"
  end
  def duration
    20 + Spells.paladin
  end
  def start_messages
   Regexp.union(
      %r{You feel a subdued warmth through your arms and torso, accompanied by a preponderant sense of engagement\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The warmth surrounding you fades with the spiritual force that was surrounding your arms\.|The subdued warmth embracing you fades along with the spiritual force surrounding your arms\.},
    )
  end
  def mana_cost
    cost = 5; [5,11,18,26,35,45,56,68,81,95,110,126,143,161,180,200].each { |n| cost += 1 if Skills.slsummoning >= n }; if group? then cost + 1 else cost end
  end
end