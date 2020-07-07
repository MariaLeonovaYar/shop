require 'roda'

class App < Roda
  plugin :render
  plugin :static, ['/js', '/css']

  route do |r|
    r.root do
      view :root
    end

    r.on 'home' do
      r.get do
        view :home
      end
    end

    r.on 'order' do
      r.get do
        view :root
      end
    end
    
    r.on 'shop' do
      r.get do
        view :shop
      end
    end

    r.on 'contacts' do
      r.get do
        view :contacts
      end
    end
    
  end
end
