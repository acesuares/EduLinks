module ApplicationHelper
  def application_name
    'CurEduLinks'
  end
  def application_title
    'CurEduLinks'
  end
  def display_link(link)
    content_tag(:div,
      content_tag(:h1, link.name, class: :link_name_show) +
      content_tag(:p, link.description, class: :link_description_show) +
      link_to(link.name, link.link),
    class: :link_block)
  end
end
