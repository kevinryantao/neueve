# https://www.cookieshq.co.uk/posts/creating-a-sitemap-with-ruby-on-rails-and-upload-it-to-amazon-s3

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.neueve.com"

SitemapGenerator::Sitemap.public_path = 'public/'

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
  add about_path, priority: 1
  add background_path, priority: 1
  add vaginal_dryness_atrophy_cause_treatment_path, priority: 1
  add vaginal_odor_cause_treatment_path, priority: 1
  add bacterial_vaginosis_vaginal_odor_path, priority: 1
  add comparison_path, priority: 1
  add disclaimer_path, priority: 1
  add faq_path, priority: 1
  add product_path, priority: 1
  add testimonials_path, priority: 1
  add cream_path, priority: 1
  add libido_path, priority: 1
  add bacterial_vaginosis_testimonials_path, priority: 1
  add gold_path, priority: 1
  add silver_path, priority: 1
  add silk_path, priority: 1
  add applicator_path, priority: 1
  add kevin_tao_path, priority: 1
  add reviews_path, priority: 1
  add dmannose_path, priority: 1
  add dilators_path, priority: 1

  # Immunome Research Paths
  add '/content/1/1/1', priority: 0.25
  add '/content/1/1/2', priority: 0.25
  add '/content/1/1/3', priority: 0.25
  add '/content/1/1/4', priority: 0.25
  add '/content/1/1/5', priority: 0.25
  add '/content/1/1/6', priority: 0.25
  add '/content/2/1/1', priority: 0.25
  add '/content/2/1/2', priority: 0.25
  add '/content/2/1/3', priority: 0.25
  add '/content/2/1/4', priority: 0.25
  add '/content/3/1/1', priority: 0.25
  add '/content/3/1/2', priority: 0.25
  add '/content/3/1/3', priority: 0.25
  add '/content/3/1/4', priority: 0.25
  add '/content/3/1/5', priority: 0.25
  add '/content/3/1/6', priority: 0.25
  add '/content/3/1/7', priority: 0.25
  add '/content/3/1/8', priority: 0.25
  add '/content/3/1/9', priority: 0.25
  add '/content/3/1/10', priority: 0.25
  add '/content/4/1/1', priority: 0.25
  add '/content/4/1/2', priority: 0.25
  add '/content/4/1/3', priority: 0.25
  add '/content/4/1/4', priority: 0.25
  add '/content/4/1/5', priority: 0.25
  add '/content/4/1/6', priority: 0.25
  add '/content/4/1/7', priority: 0.25
  add '/content/5/1/1', priority: 0.25
  add '/content/5/1/2', priority: 0.25
  add '/content/5/1/3', priority: 0.25
  add '/content/5/1/4', priority: 0.25
  add '/content/5/1/5', priority: 0.25
  add '/content/6/1/1', priority: 0.25
  add '/content/6/1/2', priority: 0.25
  add '/content/6/1/3', priority: 0.25
  add '/content/6/1/4', priority: 0.25
  add '/content/6/1/5', priority: 0.25
  add '/content/6/1/6', priority: 0.25
  add '/content/6/1/7', priority: 0.25
  add '/content/6/1/8', priority: 0.25
  add '/content/6/1/9', priority: 0.25
  add '/content/6/1/10', priority: 0.25
  add '/content/6/1/11', priority: 0.25
  add '/content/6/1/12', priority: 0.25
  add '/content/6/1/13', priority: 0.25
  add '/content/6/S1/S1', priority: 0.25
  add '/content/6/S1/S2', priority: 0.25
  add '/content/6/S1/S3', priority: 0.25
  add '/content/6/S1/S4', priority: 0.25
  add '/content/6/S1/S5', priority: 0.25
  add '/content/6/S1/S6', priority: 0.25
  add '/content/6/S2/S1', priority: 0.25
  add '/content/6/S2/S2', priority: 0.25
  add '/content/6/S2/S3', priority: 0.25
  add '/content/6/S2/S4', priority: 0.25
  add '/content/6/S2/S5', priority: 0.25
  add '/content/6/S2/S6', priority: 0.25
  add '/content/6/S2/S7', priority: 0.25
end
