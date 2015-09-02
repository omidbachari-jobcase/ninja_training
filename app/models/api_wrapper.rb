class ApiWrapper
  def get(path)
    raw_response = http.get("#{api_url}/#{path}")
    response = {
      body: JSON.parse(raw_response.body),
      code: raw_response.status_code,
      content_type: path
    }
  end

  private

  def http
    @_http ||= HTTPClient.new
  end

  def api_url
    "http://jsonplaceholder.typicode.com"
  end
end
