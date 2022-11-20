platform :ios, '16.0'
workspace 'FrameworkBasedArchitectureTutorial.xcworkspace'
inhibit_all_warnings!
use_frameworks!
# use_modular_headers!

def shared_pods
end

def app_pods
end

def module_pods
end

def common_pods
end

def shared_snapshot_testing_pod
  pod 'SnapshotTesting', '1.9.0'
end

#
# APPLICATION
#

target 'Application' do
  project 'Application/Application.xcodeproj'
  shared_pods
  app_pods
end

target 'ApplicationTests' do
  project 'Application/Application.xcodeproj'
  shared_pods
  app_pods
end

target 'ApplicationUITests' do
  project 'Application/Application.xcodeproj'
  shared_pods
  app_pods
end

#
# WORKOUT LOGS
#

target 'WorkoutLogs' do
  project 'Modules/WorkoutLogs/WorkoutLogs.xcodeproj'
  shared_pods
  module_pods
end

target 'WorkoutLogsDemo' do
  project 'Modules/WorkoutLogs/WorkoutLogs.xcodeproj'
  shared_pods
  module_pods
end

target 'WorkoutLogsTests' do
  project 'Modules/WorkoutLogs/WorkoutLogs.xcodeproj'
  shared_pods
  module_pods
end

target 'WorkoutLogsSnapshotTests' do
  project 'Modules/WorkoutLogs/WorkoutLogs.xcodeproj'
  shared_pods
  module_pods
  shared_snapshot_testing_pod
end

#
# WORKOUT DETAILS
#

target 'WorkoutDetails' do
  project 'Modules/WorkoutDetails/WorkoutDetails.xcodeproj'
  shared_pods
  module_pods
end

target 'WorkoutDetailsDemo' do
  project 'Modules/WorkoutDetails/WorkoutDetails.xcodeproj'
  shared_pods
  module_pods
end

target 'WorkoutDetailsTests' do
  project 'Modules/WorkoutDetails/WorkoutDetails.xcodeproj'
  shared_pods
  module_pods
end

target 'WorkoutDetailsSnapshotTests' do
  project 'Modules/WorkoutDetails/WorkoutDetails.xcodeproj'
  shared_pods
  module_pods
  shared_snapshot_testing_pod
end

#
# INFRASTRUCTURE
#

target 'Infrastructure' do
  project 'Common/Infrastructure/Infrastructure.xcodeproj'
  shared_pods
  common_pods
end

target 'InfrastructureTests' do
  project 'Common/Infrastructure/Infrastructure.xcodeproj'
  shared_pods
  common_pods
end

#
# DOMAIN
#

target 'Domain' do
  project 'Common/Domain/Domain.xcodeproj'
  shared_pods
  common_pods
end

target 'DomainTests' do
  project 'Common/Domain/Domain.xcodeproj'
  shared_pods
  common_pods
end

#
# PRESENTATION
#

target 'Presentation' do
  project 'Common/Presentation/Presentation.xcodeproj'
  shared_pods
  common_pods
end

target 'PresentationTests' do
  project 'Common/Presentation/Presentation.xcodeproj'
  shared_pods
  common_pods
end

target 'PresentationSnapshotTests' do
  project 'Common/Presentation/Presentation.xcodeproj'
  shared_pods
  common_pods
  shared_snapshot_testing_pod
end
