Effect.new("Invisibility", 916) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + (Spells.wizard / 2)
  end
  def start_messages
   Regexp.union(
      %r{You become invisible\.},
      %r{Your invisibility is extended\.},
      %r{You refresh your invisibility\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You (become|are) visible again\.},
      %r{You fade into (?:view|sight|visibility)(\.| and strike!)},
      %r{Your invisibili?ty (falls\.|fails\.|has been dispelled!)},
      %r{Your startled movement makes you visible again!},
      %r{You make so much noise that only the dead would not notice you thrashing about in your unsuccessful search\.|^The driving storm breaks your concentration, leaving you visible again\.|^An? [\w\s]+ discovers you and your invisibility fails!},
      %r{[A-Z][a-z]+ dispels your invisibility!},
      %r{But you are not hidden!},
      %r{Dark, swirling mist billows before you from nothingness, tiny pinpoints of light glimmering from its inky depths\.  Slight crackling can be heard from within and the scent of ozone tickles at your nose\.  Suddenly, a blinding arc of lightning tears through the air and stikes you, causing your invisibility to fade\.},
      %r{Trying to move through [\w\s]+ reveals you\.$|discovers your hiding place!$|your invisibility fails!},
    )
  end
  def mana_cost
    16
  end
end