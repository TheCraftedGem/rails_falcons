class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :favorites
end
