class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.search(params)
    query = self.all
    params.each do |field, value|
      query = query.where("#{field} LIKE ?", '%' + value + '%')
    end
    query
  end
end
