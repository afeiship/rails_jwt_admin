require_relative "lib/rails_jwt_admin/version"

Gem::Specification.new do |spec|
  spec.name        = "rails_jwt_admin"
  spec.version     = RailsJwtAdmin::VERSION
  spec.authors     = [ "aric.zheng" ]
  spec.email       = [ "1290657123@qq.com" ]
  spec.homepage = "https://github.com/afeiship/rails_jwt_admin"
  spec.summary = "Summary of RailsJwtAdmin."
  spec.license     = "MIT"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.1.1"
end
