Effect.new("Sign of Staunching", 9909) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    2 + Stats.level / 3.0
  end
  def start_messages
   Regexp.union(
      %r{Your veins throb and your blood sings\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your SIGN OF (?:STAUNCHING|CLOTTING) is no longer effective\.},
    )
  end
  def mana_cost
    1
  end
end