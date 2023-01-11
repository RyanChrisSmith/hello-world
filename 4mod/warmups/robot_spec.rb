require './robot'

RSpec.describe Robot do
  it 'can check if the robot returned to its original position' do
    robot = Robot.new

    expect(robot.return_to_origin?("GRGRGRG")).to eq true
    expect(robot.return_to_origin?("GLGLGLGL")).to eq true
    expect(robot.return_to_origin?("GRGL")).to eq false
    expect(robot.return_to_origin?("RGRGRGL")).to eq false
  end
end