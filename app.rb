class App

  def call(env)
    headers = { 'Content-Type' => 'text/html' } 

    return [200, headers, ['favicon']] if env['PATH_INFO'] == '/favicon.ico'

    response_html = File.read('./views/index.html')

    return [200, headers, [response_html]]
  end

end
