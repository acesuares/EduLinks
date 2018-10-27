class Group < ApplicationRecord
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail

  has_and_belongs_to_many :links
  belongs_to :school_type
  has_many :topics, through: :links

  default_scope { order('name ASC') }

  def _presentation
    "#{name} (#{school_type.name})"
  end

  def topic_names
    topics.map(&:name).sort.uniq
  end

  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :name, '', :text_field ],
      [ :school_type, '', :dropdown ],
      [ :links, '', :info_list ],
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
