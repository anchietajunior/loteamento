module ApplicationHelper
  def icon_link(icon, link)
    link_to("#{content_tag :i, nil, class: "fa fa-#{icon}"}".html_safe,
      link, class: "btn")
  end
  def icon_link_destroy(icon, link)
    link_to("#{content_tag :i, nil, class: "fa fa-#{icon}"}".html_safe,
      link, class: "btn", method: :delete, class: "btn", data: {confirm: 'Are you sure?'})
  end
end
