module ApplicationHelper

  def full_title(page_title)
    base_title = "NeuEve"
    if page_title.empty?
      base_title
    elsif page_title.include?('NeuEve')
      page_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def full_description(description)
    if description.empty?
      "NeuEve Suppositories and Cream are a natural remedy for vaginal dryness, atrophy, odor, itching, burning, painful sex and other discomforts of menopause."
    else
      description
    end
  end

  def show_svg(path)
    File.open("app/assets/images/#{path}", "rb") do |file|
      raw file.read
    end
  end
end
