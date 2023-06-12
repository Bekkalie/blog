module ApplicationHelper
  def nav_tab(title, url, options = {})
    current_page = options.delete :current_page

    css_class = current_page == title ? 'bg-cyan-400 dark:bg-pink-500' : 'dark:bg-zinc-700'

    options[:class] = if options[:class]
                        options[:class] + ' ' + css_class
                      else
                        css_class
                      end

    link_to title, url, options
  end

  def currently_at(current_page = '')
    render partial: 'main/nbar', locals: {current_page: current_page}
  end

  def full_title(page_title = "")
    base_title = "Page"
    if page_title.present?
      "#{page_title} | #{base_title}"
    else
      base_title
    end
  end
end
