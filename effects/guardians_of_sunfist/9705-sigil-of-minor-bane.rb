Effect.new("Sigil of Minor Bane", 9705) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{As you concentrate on your sigil, you become slightly more aware of your foes and the weakest spots in their defenses\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your heightened awareness of your foes fades away\.},
    )
  end
  def mana_cost
    3
  end
  def stamina_cost
    3
  end
end