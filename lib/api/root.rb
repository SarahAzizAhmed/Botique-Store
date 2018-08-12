module API
 class Root < Grape::API
 	prefix 'api'
    mount API::V::Root
 end
end
