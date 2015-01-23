class Code < ActiveRecord::Base
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
end
