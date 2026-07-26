function python --wraps=python
    if test (count $argv) -ge 3; and test "$argv[1]" = "-m"; and test "$argv[2]" = "pytest"; and test "$argv[3]" = "-short"
        command python -m unittest discover -v -p "*_test.py" 2>&1 | grep -E "^test_[a-z_]+ \("
    else
        command python $argv
    end
end
