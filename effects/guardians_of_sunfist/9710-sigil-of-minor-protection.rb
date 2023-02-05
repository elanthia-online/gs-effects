Effect.new("Sigil of Minor Protection", 9710) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{As you concentrate on your sigil, you become slightly more aware of weak spots in your defenses\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your heightened awareness of your own defensive weaknesses fades away\.},
    )
  end
  def mana_cost
    5
  end
  def stamina_cost
    10
  end
end