proc myproc {a b} {
    if {[string is double -strict $a] && [string is double -strict $b]} {
        if {$a > $b} {
            return $a
        } else {
            return $b
        }
    } elseif {[string is double -strict $a]} {
        return $a
    } elseif {[string is double -strict $b]} {
        return $b
    } else {
        return "Invalid input"
    }
}

puts [myproc 10 5]
puts [myproc a 5]
puts [myproc 10 a]
puts [myproc a b]