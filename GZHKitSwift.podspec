Pod::Spec.new do |s|

  s.name            = "GZHKitSwift"
  s.version         = "0.0.20"
  s.summary         = "个人开发swift所用的工具包"
  s.description     = <<-DESC
                      GZHKitSwift
                      个人开发swift所用的工具包
                      DESC
  s.homepage        = "https://github.com/guzhenhuaGitHub/GZHKitSwift"
  s.license         = "MIT"
  s.author          = { "guzhenhuaGitHub" => "514668826@qq.com" }
  s.platform        = :ios, "10.0"
  s.swift_version   = "4.1"
  s.source          = { git: "https://github.com/guzhenhuaGitHub/GZHKitSwift.git", tag: "#{s.version}" }
  s.source_files    = "Source/**/*.*"
#  s.dependency      "***"

end
