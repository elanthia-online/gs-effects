Effect.new("Fervor", 1618) do
  def type
    "offense"
  end
  def availability
    "group"
  end
  def duration
    599
  end
  def start_messages
   Regexp.union(
      %r{You utter a pious chant and a divine force suddenly radiates around you\.  The intensity of your patron's aid billows out from you in a wave of righteous indignation\!},
    )
  end
  def end_messages
    Regexp.union(
      %r{The divine force surrounding you slowly fades away\.},
    )
  end
  def mana_cost
    18
  end
end