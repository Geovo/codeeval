p dirs = Dir.entries(".") - [".", '..', '.DS_Store', 'status.rb.swp']
dirs.map {|d| `touch #{d}/DONE`}
