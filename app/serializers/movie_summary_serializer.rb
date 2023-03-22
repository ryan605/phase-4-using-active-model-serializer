class MovieSummarySerializer < ActiveModel::Serializer
    attributes :summary
  
    def summary
      "#{self.object.title} - #{self.object.description[0..2000]}..."
    end
  
  end