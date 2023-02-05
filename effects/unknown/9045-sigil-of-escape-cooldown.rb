Effect.new("Sigil of Escape Cooldown", 9045) do
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
      %r{Your incapacitation makes it all the more difficult, but as you concentrate \(as best you can\) on your sigil, you feel yourself being whisked away\.\.\.},
    )
  end
end