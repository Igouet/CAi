module PostsHelper
  require 'net/http'
  require 'net/https'

  def actualizar_c_comentarios(numero)

    uri = URI("https://graph.facebook.com/?ids=http://2012.cai.cl/posts/#{numero}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(uri.request_uri)
    res = http.request(request)
    body = res.body
    indice = body.index('"comments":')
    p = Post.find(numero)
    if indice
      fin = body.index('}', indice+1)
      puts indice
      puts fin
      n = body[(indice+11)..fin-1]

      p.cantidad_comentarios = n
      p.save
      n
    else
      p.cantidad_comentarios = 0
      p.save

    end
  end

  def noticias_caitv
    seccion = Seccion.where(["name = ?", "CAi TV"]).first.id
    Post.where({:seccion_id => seccion}).order("created_at DESC").limit(6)
  end

  def noticias_impulso
    seccion = Seccion.where(["name = ?", "Impulso"]).first.id
    Post.where({:seccion_id => seccion}).order("created_at DESC").limit(6)
  end

end
