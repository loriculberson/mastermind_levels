lib_dir = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib_dir)

require 'mm_runner'

mm_runner = MMRunner.new($stdin, $stdout)
mm_runner.start_game