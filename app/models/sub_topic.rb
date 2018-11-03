class SubTopic < ApplicationRecord
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail

  belongs_to :topic
  has_and_belongs_to_many :links

  def _presentation
    "#{topic.name} - #{name}"
  end


  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :name , "name", :text_field ],
      [ :slug, '', :text_field ],
      [ :description , "description", :text_area ],
      [ :topic, '', :dropdown ],
      [ :links, '', :info_list]
    ]
  end


  def <=>(other)
    self.name <=> other.name
  end


  def self.not_accessible_through_html?
    false
  end

  def self.order_by_clause
    "name"
  end


end
