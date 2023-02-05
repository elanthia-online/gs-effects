Effect.new("Sigil of Major Protection", 9719) do
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
      %r{As you concentrate on your sigil, you become much more aware of vulnerable spots in your defenses\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your heightened awareness of your own vulnerabilities fades away\.},
    )
  end
  def mana_cost
    10
  end
  def stamina_cost
    15
  end
end