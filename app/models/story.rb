class Story < ApplicationRecord
  has_many :comments
  before_create :set_default, :if => :new_record?

  def set_default
    i = 1
    words = self.body.split
    self.story_lim ||= '' + words[0]
    while 1
      begin
        if self.story_lim.length + words[i].length < 1000
          self.story_lim += ' ' + words[i]
          i += 1
        else
          self.story_lim += '...'
          break
        end
      rescue
        break
      end
    end
  end
end
