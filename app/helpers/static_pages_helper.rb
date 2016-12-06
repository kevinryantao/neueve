module StaticPagesHelper

  def create_url(base_url, path_array, query_params_hash, anchor)
    url = base_url
    if !url.ends_with?('/')
      url = url + '/'
    end
    for path in path_array
      url = url + path + '/'
    end
    url = url + '?'
    for (key, value) in query_params_hash
      url = url + key.to_s + '=' + value.to_s + '&'
    end
    if anchor.present?
      url = url + '#' + anchor.to_s
    end
    url
  end
end
