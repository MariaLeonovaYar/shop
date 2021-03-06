require 'roda'

class App < Roda
  plugin :render
  plugin :static, ['/js', '/css']

  route do |r|
    r.root do
      view :home
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

    r.on 'shop_copy' do
      r.get do
        view :shop_copy
      end
    end

    r.on 'shop_copy_2' do
      r.get do
        view :shop_copy_2
      end
    end

    r.on 'contacts' do
      r.get do
        view :contacts
      end
    end

    r.on 'LK' do
      r.get do
        view :LK
      end
    end
    
  end
end
