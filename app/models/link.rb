class Link < ApplicationRecord
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail
  mount_uploader :image, ImageUploader

  belongs_to :user

  has_and_belongs_to_many :groups
  has_and_belongs_to_many :sub_topics
  has_many :topics, through: :sub_topics

  def _presentation
    "#{name}"
  end


  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :name , "name", :text_field ],
      [ :user, '', :info ],
      [ :sub_topics, '', :check_list],
      [ :groups, '', :check_list],
      [ :link , "name", :text_field ],
      [ :image , "name", :image_field ],
      [ :description , "name", :text_area_without_ckeditor ],

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
