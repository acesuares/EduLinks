class Link < ApplicationRecord
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail

  belongs_to :user

  has_and_belongs_to_many :groups
  has_and_belongs_to_many :topics

  def _presentation
    "#{name}"
  end


  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :name , "name", :text_field ],
      [ :user, '', :info ],
      [ :topics, '', :check_list],
      [ :groups, '', :check_list],
      [ :link , "name", :text_field ],
      [ :description , "name", :text_area ],

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
