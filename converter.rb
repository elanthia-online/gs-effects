require 'oga'
require 'erb'
require 'net/https'
require 'fileutils'

module Effects
  class Effect
    Template = ERB.new File.read("effect.erb") 

    def initialize(spell)
      @spell = spell
    end

    def xml
      @spell.to_s
    end

    def attributes()
      @spell.attributes.reject {|prop| %w(name number).include?(prop.name)}
    end

    def name()
      @spell.get("name")
    end

    def number()
      @spell.get("number")
    end

    def circle_number()
      num = self.number.to_s
      return num.slice(0...1) if num.size.eql?(3)
      return num.slice(0...2)
    end

    def circle()
      case self.circle_number.to_i
      when 1
        :minor_spirit
      when 2
        :major_spirit
      when 3
        :cleric
      when 4
        :minor_elemental
      when 5
        :major_elemental
      when 6
        :ranger
      when 7
        :sorcerer
      when 9
        :wizard
      when 10
        :bard
      when 11
        :empath
      when 12
        :minor_mental
      when 16
        :paladin
      when 17
        :arcane
      when 97
        :guardians_of_sunfist
      when 98
        :order_of_voln
      when 99
        :council_of_light
      when 66
        :environment
      when 19
        :whale
      when 94
        :cman
      else
        :unknown
      end
    end

    def costs()
      @spell.css("cost")
    end

    def duration
      @spell.css("duration")
    end

    def start_messages
      @spell.css(%`message[type="start"]`).map(&:text)
    end

    def end_messages
      @spell.css(%`message[type="end"]`).map(&:text)
    end

    def file_name()
      File.join self.dir, (self.number + "-" + self.name.downcase)
        .gsub("\s", "-")
        .gsub("(", "")
        .gsub(")", "")
        .gsub("'", "")
        .gsub("aa:", "assume-aspect")
        .gsub(%r[-{1,}], "-")
        .strip + ".rb"
    end

    def dir()
      File.join "effects", self.circle.to_s
    end

    def render()
      Effect::Template.result_with_hash(effect: self)
    end

    def write()
      FileUtils.mkdir_p(self.dir)
      File.open(self.file_name, "w") {|f| f << Converter.normalize_whitespace(self.render) }
    end
  end
end

module Effects
  module Converter
    def self.normalize_whitespace(string)
      string.gsub(/\s+\n{1,}/, "\n")
    end

    def self.main()
      @document = Oga.parse_html File.read("./spell-list.xml")
      @effects = @document.css("spell").map do |spell| Effect.new(spell) end
      @effects.each(&:write)
      #spell = @effects.find {|e| e.number == "101"}
      #puts spell.xml
      #puts spell.start_messages
    end

    Converter.main()
  end
end