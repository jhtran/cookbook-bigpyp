module Extensions
  module Templates
    def vip_attr_order(key)
      case key
      when 'dns'
        return 0
      when 'ip'
        return 1
      when 'ssl'
        return 2 
      when 'front_port'
        return 3 
      when 'back_port'
        return 4
      when 'monitor'
        return 5
      when 'members'
        return 8
      else
        return 9
      end
    end
  end
end
