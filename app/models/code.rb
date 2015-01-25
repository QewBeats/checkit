class Code < ActiveRecord::Base
  validates :code, presence: true, uniqueness: true

  enum status: %w(used unused)

  def used?
    self.status == 'used'
  end

  def unused?
    self.status == 'unused'
  end

  def used!
    self.update!(:status => 0)
  end

  def self.genuine code
    c = Code.find_by(:code => code)
    if c.try(:unused?)
      c.used!
      return 'unused'
    elsif c.try(:used?)
      return 'used'
    else
      return nil
    end
  end

  def self.generate number
    code_listings = []
    (1..number).each { |i| code_listings << Code.create(:code => rand.to_s[2...14]) }

    code_listings
  end
end
