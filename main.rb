require 'dxruby'

Dir[
  "scene/*.rb",
  "character/*.rb"
].each do |file|
    require_relative file
end

Window.width  = 600
Window.height = 500

start = Start.new
stage = Stage.new
result = Result.new

scenes = [
    start = Start.new,
    stage,
    result
]
scene = 0

Window.loop do 
    scenes[scene].update
    scene += 1 if scenes[scene].finish?
    if scene >= 3
        scene = 1
        scenes[scene] = Stage.new
        scenes[2] = Result.new
    end
    if Input.key_push?(K_ESCAPE)
        Window.close
    end
end