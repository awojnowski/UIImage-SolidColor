Pod::Spec.new do |spec|
  spec.name                  = 'UIImage-SolidColor'
  spec.version               = '1.0.0'
  spec.license               = { :type => 'MIT' }
  spec.homepage              = 'https://github.com/awojnowski/UIImage-SolidColor'
  spec.authors               = { 'Aaron Wojnowski' => 'aaronwojnowski@gmail.com' }
  spec.summary               = 'Simple category to convert an image to a solid color.'
  spec.source                = { :git => 'https://github.com/awojnowski/UIImage-SolidColor.git', :tag => '1.0.0'}
  spec.source_files          = 'src/*'
  spec.ios.deployment_target = '7.0'
  spec.ios.frameworks        = 'Foundation', 'UIKit'
  spec.requires_arc          = true
end