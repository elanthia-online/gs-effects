Effect.new("Sigil of Major Bane", 9715) do
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
      %r{As you concentrate on your sigil, you become much more aware of your foes and the most vulnerable portions of their bodies\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your heightened awareness of your foes fades away\.},
    )
  end
  def mana_cost
    10
  end
  def stamina_cost
    10
  end
end