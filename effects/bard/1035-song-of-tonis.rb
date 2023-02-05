Effect.new("Song of Tonis", 1035) do
  def type
    "defense/bonus"
  end
  def availability
    "self-cast"
  end
  def duration
    dur = 60.0; 1.upto(Skills.mltelepathy) { |val| if 20 >= val then dur += 1.0 else dur += 0.5 end }; dur / 60.0
  end
  def start_messages
   Regexp.union(
      %r{As [A-z]+ sings?, a(?:n invigorating)? squall of wind (?:briefly )?swirls (?:around|about) you(?: and you hear a barely audibl[ey] burst of laughter)?\.(?:  You feel yourself moving (?:a bit )?more smoothly and quickly than before!)?},
    )
  end
  def end_messages
    Regexp.union(
      %r{You hear a laugh and a clink of coins, and (?:you and your group )?become a bit less nimble\.},
    )
  end
  def mana_cost
    35
  end
end