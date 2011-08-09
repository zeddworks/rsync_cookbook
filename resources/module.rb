def initialize(*args)
  super
  @action = :create
end

actions :create

attribute :module_name, :name_attribute => true, :kind_of => String
attribute :path, :kind_of => String
attribute :comment, :kind_of => [ String ]
attribute :uid, :kind_of => [ String ]
attribute :gid, :kind_of => [ String ]
