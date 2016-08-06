# Uncomment this line to define a global platform for your project
# platform :ios, '9.3'
use_frameworks!

def install_pods
    pod 'RxSwift', '~> 2.6.0'
    pod 'RxCocoa', '~> 2.6.0'
end

# target list
targetArray= Array['WatchTest']
for targetName in targetArray
    target targetName do
        install_pods
    end
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '2.3'
            config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.10'
        end
    end
end