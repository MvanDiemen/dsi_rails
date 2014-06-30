class ReviewComment < ActiveRecord::Base
  def parse_comment
    binding.pry if dog_related_words.any? {
      |word| self.data.include? word
    }
  end

  def dog_related_words
    [
      # English
      'dog',
      'mongrel',
      'lapdog',
      'poodle',
      'corgi',
      'spitz',
      'pup',
      'puppy',
      'puppies',
      'doggie',
      'leashed',
      'unleashed',
      'allowed',
      'lover',
      'lovers',
      'barking',
      'animal',
      'pet',
      'off-leash',
      'woof',
      'yelp',
      'pitbull',
      'pit bull',

      #Dutch
      'hondvriendelijk',
      'hond',
      'uitlaten',
      'uitgelaten',
      'uitlaat',
      'hondje',
      'herdershond',
      'herder',
      'hondenasiel',
      'hondsdol',
      'blaffen',
      'blaf',
      'blaft',
      'aanlijnen',
      'aangelijnd',
      'aanlijn',
      'huisdier',
      'dierenliefde',
      'hotelpoes',
      'loslaten',
      'loslopen',
      'losloopgebied',
      'hondenoppas',
      'uitlaatservice',
      'hondenstrand',
      'loslopen',
      'loslopende',
      'hondenstrand',
      'hondeneigenaar',
      'braaf',
      'brave'
    ]
  end
end
