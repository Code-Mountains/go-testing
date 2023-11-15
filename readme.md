# Writing a Fuzz Test

## ./fuzz_test/main_test.go

## Fuzz Testing | Demo: Writing a Fuzz Test

### https://app.pluralsight.com/course-player?clipId=3854fc76-ada8-44ad-a491-f838dce105ca

## 06 / demos / 02-after

```

$ pwd
/home/sysadmin/Documents/code/go/go-testing/fuzz_test



```



# Writing a Benchmark Test

## ./benchmark_test/user/

## Benchmark Testing | Demo: Writing Parallel Benchmarks

### https://app.pluralsight.com/course-player?clipId=7b524a07-1a51-46d9-821c-efe6597bdc2a

## 05 / demos / 03-parallel-benchmarks

```

$ pwd
/home/sysadmin/Documents/code/go/go-testing/benchmark_test


$ go test ./... -v -bench . -benchmem
?   	benchmark_test	[no test files]
=== RUN   TestHandler
--- PASS: TestHandler (0.00s)
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== RUN   TestSlowOne
=== PAUSE TestSlowOne
=== RUN   TestSlowTwo
=== PAUSE TestSlowTwo
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== CONT  TestSlowOne
=== CONT  TestSlowTwo
--- PASS: TestSlowTwo (1.00s)
--- PASS: TestSlowOne (1.00s)
goos: linux
goarch: amd64
pkg: benchmark_test/user
cpu: Intel(R) Core(TM) i7-7820HK CPU @ 2.90GHz
BenchmarkHandler
    component_test.go:80: 1
    component_test.go:80: 100
    component_test.go:80: 10000
    component_test.go:80: 165993
BenchmarkHandler-3           	  165993	      6968 ns/op	    5128 B/op	      64 allocs/op
BenchmarkHandlerParallel
    component_test.go:113: 1
    component_test.go:113: 100
    component_test.go:113: 10000
    component_test.go:113: 259677
    component_test.go:113: 327817
BenchmarkHandlerParallel-3   	  327817	      3359 ns/op	    5128 B/op	      64 allocs/op
PASS
ok  	benchmark_test/user	4.346s


$ go test ./... -v -bench . -benchmem -benchtime 5s
?   	benchmark_test	[no test files]
=== RUN   TestHandler
--- PASS: TestHandler (0.00s)
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== RUN   TestSlowOne
=== PAUSE TestSlowOne
=== RUN   TestSlowTwo
=== PAUSE TestSlowTwo
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== CONT  TestSlowOne
=== CONT  TestSlowTwo
--- PASS: TestSlowTwo (1.00s)
--- PASS: TestSlowOne (1.00s)
goos: linux
goarch: amd64
pkg: benchmark_test/user
cpu: Intel(R) Core(TM) i7-7820HK CPU @ 2.90GHz
BenchmarkHandler
    component_test.go:80: 1
    component_test.go:80: 100
    component_test.go:80: 10000
    component_test.go:80: 808782
BenchmarkHandler-3           	  808782	      6701 ns/op	    5128 B/op	      64 allocs/op
BenchmarkHandlerParallel
    component_test.go:113: 1
    component_test.go:113: 100
    component_test.go:113: 10000
    component_test.go:113: 1000000
    component_test.go:113: 1732140

BenchmarkHandlerParallel-3   	 1732140	      3453 ns/op	    5128 B/op	      64 allocs/op
PASS
ok  	benchmark_test/user	16.007s




```



# Writing a Benchmark Test

## ./benchmark_test/user/

## Benchmark Testing | Demo: Writing a Benchmark Test

### https://app.pluralsight.com/course-player?clipId=a6b627e0-f764-4d7a-becf-26d347f06ecc

## 05 / demos / 01-creating-benchmark-tests

```

$ pwd
/home/sysadmin/Documents/code/go/go-testing/benchmark_test


$ go test ./... -v -bench .
?   	benchmark_test	[no test files]
=== RUN   TestHandler
--- PASS: TestHandler (0.00s)
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== RUN   TestSlowOne
=== PAUSE TestSlowOne
=== RUN   TestSlowTwo
=== PAUSE TestSlowTwo
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== CONT  TestSlowOne
=== CONT  TestSlowTwo
--- PASS: TestSlowTwo (1.00s)
--- PASS: TestSlowOne (1.00s)
goos: linux
goarch: amd64
pkg: benchmark_test/user
cpu: Intel(R) Core(TM) i7-7820HK CPU @ 2.90GHz
BenchmarkHandler
BenchmarkHandler-3   	  175741	      6270 ns/op
PASS
ok  	benchmark_test/user	2.182s


$ pwd

Path
----
D:\Documents\code\golang\go-testing\benchmark_test

$ go test ./... -v -bench .
?       benchmark_test  [no test files]
=== RUN   TestHandler
--- PASS: TestHandler (0.00s)
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== RUN   TestSlowOne
=== PAUSE TestSlowOne
=== RUN   TestSlowTwo
=== PAUSE TestSlowTwo
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== CONT  TestSlowOne
=== CONT  TestSlowTwo
--- PASS: TestSlowTwo (1.02s)
--- PASS: TestSlowOne (1.02s)
goos: windows
goarch: amd64
pkg: benchmark_test/user
cpu: Intel(R) Core(TM) i7-7820HK CPU @ 2.90GHz
BenchmarkHandler
BenchmarkHandler-8        166917              6355 ns/op
PASS
ok      benchmark_test/user     2.182s


$ go test ./... -v -bench .
?   	benchmark_test	[no test files]
=== RUN   TestHandler
--- PASS: TestHandler (0.00s)
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== RUN   TestSlowOne
=== PAUSE TestSlowOne
=== RUN   TestSlowTwo
=== PAUSE TestSlowTwo
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== CONT  TestSlowOne
=== CONT  TestSlowTwo
--- PASS: TestSlowTwo (1.00s)
--- PASS: TestSlowOne (1.00s)
goos: linux
goarch: amd64
pkg: benchmark_test/user
cpu: Intel(R) Core(TM) i7-7820HK CPU @ 2.90GHz
BenchmarkHandler
    component_test.go:80: 1
    component_test.go:80: 100
    component_test.go:80: 10000
    component_test.go:80: 174354
BenchmarkHandler-3   	  174354	      6887 ns/op
PASS
ok  	benchmark_test/user	2.283s


$ go test ./... -v -bench . -benchmem
?   	benchmark_test	[no test files]
=== RUN   TestHandler
--- PASS: TestHandler (0.00s)
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== RUN   TestSlowOne
=== PAUSE TestSlowOne
=== RUN   TestSlowTwo
=== PAUSE TestSlowTwo
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== CONT  TestSlowOne
=== CONT  TestSlowTwo
--- PASS: TestSlowTwo (1.00s)
--- PASS: TestSlowOne (1.00s)
goos: linux
goarch: amd64
pkg: benchmark_test/user
cpu: Intel(R) Core(TM) i7-7820HK CPU @ 2.90GHz
BenchmarkHandler
    component_test.go:80: 1
    component_test.go:80: 100
    component_test.go:80: 10000
    component_test.go:80: 115395
    component_test.go:80: 164070
BenchmarkHandler-3   	  164070	      7257 ns/op	    5128 B/op	      64 allocs/op
PASS
ok  	benchmark_test/user	3.159s



```

# Calculating Coverage Frequency Reports

## ./black_box_test/user/

## Generating Code Coverage Reports | Demo: Calculating Coverage Frequency Reports

### https://app.pluralsight.com/course-player?clipId=f911201e-ff28-4cce-ae96-b7599e55cd6f

```

$ pwd
/home/sysadmin/Documents/code/go/go-testing/black_box_test


$ go test ./... -coverprofile cover.out -covermode count
?   	black_box_test	[no test files]
ok  	black_box_test/user	1.006s	coverage: 20.2% of statements


$ go tool cover -html cover.out
# ./frequency-coverage.html

$ head -n 10 frequency-coverage.html

<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
                <title>user: Go Coverage Report</title>
                <style>
                        body {
                                background: black;
                                color: rgb(80, 80, 80);
$ tail -n 10 frequency-coverage.html
                }
                if (location.hash != "") {
                        select(location.hash.substr(1));
                }
                if (!visible) {
                        select("file0");
                }
        })();
        </script>
</html>


```

# Calculating Coverage Reports

## ./black_box_test/user/

## Generating Code Coverage Reports | Demo: Calculating Coverage Reports

### https://app.pluralsight.com/course-player?clipId=275885d5-caa4-46fa-b618-93701f2aabef

```

$ pwd
/home/sysadmin/Documents/code/go/go-testing/black_box_test

$ go test ./... -coverprofile cover.out
?       black_box_test  [no test files]
ok      black_box_test/user     1.005s  coverage: 20.2% of statements

$ cat cover.out
mode: set
black_box_test/user/logic.go:36.22,40.2 3 1
black_box_test/user/logic.go:42.23,49.2 6 0
black_box_test/user/logic.go:51.35,54.26 3 1
black_box_test/user/logic.go:54.26,55.17 1 1
black_box_test/user/logic.go:55.17,57.4 1 1
black_box_test/user/logic.go:59.2,59.60 1 1
black_box_test/user/logic.go:62.35,64.2 1 1
black_box_test/user/logic.go:66.43,69.23 3 0
black_box_test/user/logic.go:69.23,70.24 1 0
black_box_test/user/logic.go:70.24,73.4 2 0
black_box_test/user/logic.go:75.2,75.60 1 0
black_box_test/user/logic.go:78.26,81.23 3 0
black_box_test/user/logic.go:81.23,84.3 2 0
black_box_test/user/logic.go:85.2,85.14 1 0
black_box_test/user/service.go:11.54,14.77 2 1
black_box_test/user/service.go:14.77,16.3 1 1
black_box_test/user/service.go:16.8,18.17 2 0
black_box_test/user/service.go:18.17,22.4 3 0
black_box_test/user/service.go:23.3,23.23 1 0
black_box_test/user/service.go:27.58,28.18 1 1
black_box_test/user/service.go:30.22,33.17 3 1
black_box_test/user/service.go:33.17,37.4 3 0
black_box_test/user/service.go:38.3,38.15 1 1
black_box_test/user/service.go:40.23,44.17 4 0
black_box_test/user/service.go:44.17,48.4 3 0
black_box_test/user/service.go:49.3,49.19 1 0
black_box_test/user/service.go:53.65,54.18 1 0
black_box_test/user/service.go:56.22,58.17 2 0
black_box_test/user/service.go:58.17,61.4 2 0
black_box_test/user/service.go:62.3,63.17 2 0
black_box_test/user/service.go:63.17,67.4 3 0
black_box_test/user/service.go:68.3,70.9 3 0
black_box_test/user/service.go:72.22,76.17 4 0
black_box_test/user/service.go:76.17,80.4 3 0
black_box_test/user/service.go:81.3,82.17 2 0
black_box_test/user/service.go:82.17,85.4 2 0
black_box_test/user/service.go:86.3,87.17 2 0
black_box_test/user/service.go:87.17,91.4 3 0
black_box_test/user/service.go:92.3,93.16 2 0
black_box_test/user/service.go:95.25,96.18 1 0
black_box_test/user/service.go:96.18,99.4 2 0
black_box_test/user/service.go:101.10,102.45 1 0


$ go tool cover -func cover.out
black_box_test/user/logic.go:36:        getAll          100.0%
black_box_test/user/logic.go:42:        add             0.0%
black_box_test/user/logic.go:51:        getOne          100.0%
black_box_test/user/logic.go:62:        GetOne          100.0%
black_box_test/user/logic.go:66:        update          0.0%
black_box_test/user/logic.go:78:        delete          0.0%
black_box_test/user/service.go:11:      Handler         33.3%
black_box_test/user/service.go:27:      handleUsers     31.2%
black_box_test/user/service.go:53:      handleUser      0.0%
total:                                  (statements)    20.2%

$ go tool cover -html cover.out
# ./coverage.html

$ head -20 coverage.html

<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
                <title>user: Go Coverage Report</title>
                <style>
                        body {
                                background: black;
                                color: rgb(80, 80, 80);
                        }
                        body, pre, #legend span {
                                font-family: Menlo, monospace;
                                font-weight: bold;
                        }
                        #topbar {
                                background: black;
                                position: fixed;
                                top: 0; left: 0; right: 0;
                                height: 42px;

$ tail -20 coverage.html
                        visible = document.getElementById(part);
                        if (!visible)
                                return;
                        files.value = part;
                        visible.style.display = 'block';
                        location.hash = part;
                }
                function onChange() {
                        select(files.value);
                        window.scrollTo(0, 0);
                }
                if (location.hash != "") {
                        select(location.hash.substr(1));
                }
                if (!visible) {
                        select("file0");
                }
        })();
        </script>
</html>

```

# Calculating Code Coverage

## ./black_box_test/user/

## Generating Code Coverage Reports | Demo: Calculating Coverage Percentages

### https://app.pluralsight.com/course-player?clipId=8e3665bc-52c5-4167-b5d0-51bef1c85f4d

```

$ pwd
/home/sysadmin/Documents/code/go/go-testing/black_box_test

$ go test ./... -v -cover
?       black_box_test  [no test files]
=== RUN   TestHandler
--- PASS: TestHandler (0.00s)
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== RUN   TestSlowOne
=== PAUSE TestSlowOne
=== RUN   TestSlowTwo
=== PAUSE TestSlowTwo
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== CONT  TestSlowOne
=== CONT  TestSlowTwo
--- PASS: TestSlowTwo (1.00s)
--- PASS: TestSlowOne (1.00s)
PASS
coverage: 20.2% of statements
ok      black_box_test/user     (cached)        coverage: 20.2% of statements


```

# Writing a Black Box Test

## ./black_box_test/user/logic_bb_test.go

## Testing Business Logic | Demo: Writing a Black Box Test

### https://app.pluralsight.com/course-player?clipId=b060c09a-3483-407f-abf8-ef73516de5e0

## 03 / demos / 04_white_and_black_box_testing

```

$ pwd
/home/sysadmin/Documents/code/go/go-testing/black_box_test

$ go test ./... -v
?       black_box_test  [no test files]
=== RUN   TestHandler
--- PASS: TestHandler (0.00s)
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== RUN   TestSlowOne
=== PAUSE TestSlowOne
=== RUN   TestSlowTwo
=== PAUSE TestSlowTwo
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== CONT  TestSlowOne
=== CONT  TestSlowTwo
--- PASS: TestSlowTwo (1.00s)
--- PASS: TestSlowOne (1.00s)
PASS
ok      black_box_test/user     (cached)


```

# Running Tests in Parallel

## ./parallel_test/user/logic_test.go

## Testing Business Logic | Demo: Running Tests in Parallel

### https://app.pluralsight.com/course-player?clipId=dc51eb51-32c2-4162-948c-bc3aaddf3639

## 03 / demos / 03_parallel_test_runs

```

$ pwd
/home/sysadmin/Documents/code/go/go-testing/parallel_test

$ go test ./... -v
?       parallel_test   [no test files]
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
=== RUN   TestSlowOne
=== PAUSE TestSlowOne
=== RUN   TestSlowTwo
=== PAUSE TestSlowTwo
=== CONT  TestSlowOne
=== CONT  TestSlowTwo
--- PASS: TestSlowOne (1.00s)
--- PASS: TestSlowTwo (1.00s)
PASS
ok      parallel_test/user      1.005s


```

# Go Component | Integration Testing

## ./component_test/user/component_test.go

## Testing Business Logic | Demo: Writing a Component Test

### https://app.pluralsight.com/course-player?clipId=e52c361f-4f15-4a94-be05-b05d02a7f129

## 03 / demos / 02_integration_test

```
$ pwd
/home/sysadmin/Documents/code/go/go-testing/component_test

$ go test ./... -v
?       component_test  [no test files]
=== RUN   TestHandler
--- PASS: TestHandler (0.00s)
=== RUN   TestGetOne
--- PASS: TestGetOne (0.00s)
PASS
ok      component_test/user     (cached)


```

# Go Unit Testing

## ./unit_test/user/logic_test.go

## Testing Business Logic | Demo: Writing a Unit Test

### https://app.pluralsight.com/course-player?clipId=6269aebe-e2e2-47a9-a822-516a15dc86f7

## 03 / demos / 01_simple_test

```

$ pwd
/home/sysadmin/Documents/code/go/go-testing/unit_test/user


$ go test
PASS
ok      unit_test/user  0.004s


$ go test unit_test/user
ok      unit_test/user  (cached)



$ go test ./...
gook    unit_test/user  0.005s


$ pwd
/home/sysadmin/Documents/code/go/go-testing/unit_test

$ go test ./user/
ok      unit_test/user  (cached)


```

# OUTPUT:

```

$ pwd
/home/sysadmin/Documents/code/go/go-testing

$ go test
PASS
ok      go-testing      0.003s


$ go test -v
=== RUN   TestUpper
    main_test.go:29: HELLO HELLO
--- PASS: TestUpper (0.00s)
=== RUN   FuzzFoo
=== RUN   FuzzFoo/seed#0
=== RUN   FuzzFoo/771e938e4458e983a736261a702e27c7a414fd660a15b63034f290b146d2f217
=== RUN   FuzzFoo/8643a79bab153d1be09b197e5c55f603de7e1e5e621f40e0ed3b0a78c72577b3
=== RUN   FuzzFoo/e9e3ffbe3b3a072c05b41faa7f69ead9344b5b040762dfde7273491dc50e7197
--- FAIL: FuzzFoo (0.00s)
    --- PASS: FuzzFoo/seed#0 (0.00s)
    --- PASS: FuzzFoo/771e938e4458e983a736261a702e27c7a414fd660a15b63034f290b146d2f217 (0.00s)
    --- FAIL: FuzzFoo/8643a79bab153d1be09b197e5c55f603de7e1e5e621f40e0ed3b0a78c72577b3 (0.00s)
    --- PASS: FuzzFoo/e9e3ffbe3b3a072c05b41faa7f69ead9344b5b040762dfde7273491dc50e7197 (0.00s)
FAIL
exit status 1
FAIL    demo    0.003s


go test -v -fuzz .
=== RUN   TestUpper
    main_test.go:29: HELLO HELLO
--- PASS: TestUpper (0.00s)
=== RUN   FuzzFoo
fuzz: elapsed: 0s, gathering baseline coverage: 0/4 completed
failure while testing seed corpus entry: FuzzFoo/8643a79bab153d1be09b197e5c55f603de7e1e5e621f40e0ed3b0a78c72577b3
fuzz: elapsed: 0s, gathering baseline coverage: 2/4 completed
--- FAIL: FuzzFoo (0.01s)
    --- FAIL: FuzzFoo (0.00s)

=== NAME
FAIL
exit status 1
FAIL    demo    0.008s


$ pwd
/home/sysadmin/Documents/code/go/go-testing/08/demos/02-test-servers/02-after/user

$ go test ./... -v -run Handler
=== RUN   TestHandler
--- PASS: TestHandler (0.00s)
=== RUN   TestHandler_server
--- PASS: TestHandler_server (0.00s)
PASS
ok      webapp/user     0.006s



```

# Official Go Docs for go help testflag

```
$ go help testflag
The 'go test' command takes both flags that apply to 'go test' itself
and flags that apply to the resulting test binary.

Several of the flags control profiling and write an execution profile
suitable for "go tool pprof"; run "go tool pprof -h" for more
information. The --alloc_space, --alloc_objects, and --show_bytes
options of pprof control how the information is presented.

The following flags are recognized by the 'go test' command and
control the execution of any test:

	-bench regexp
	    Run only those benchmarks matching a regular expression.
	    By default, no benchmarks are run.
	    To run all benchmarks, use '-bench .' or '-bench=.'.
	    The regular expression is split by unbracketed slash (/)
	    characters into a sequence of regular expressions, and each
	    part of a benchmark's identifier must match the corresponding
	    element in the sequence, if any. Possible parents of matches
	    are run with b.N=1 to identify sub-benchmarks. For example,
	    given -bench=X/Y, top-level benchmarks matching X are run
	    with b.N=1 to find any sub-benchmarks matching Y, which are
	    then run in full.

	-benchtime t
	    Run enough iterations of each benchmark to take t, specified
	    as a time.Duration (for example, -benchtime 1h30s).
	    The default is 1 second (1s).
	    The special syntax Nx means to run the benchmark N times
	    (for example, -benchtime 100x).

	-count n
	    Run each test, benchmark, and fuzz seed n times (default 1).
	    If -cpu is set, run n times for each GOMAXPROCS value.
	    Examples are always run once. -count does not apply to
	    fuzz tests matched by -fuzz.

	-cover
	    Enable coverage analysis.
	    Note that because coverage works by annotating the source
	    code before compilation, compilation and test failures with
	    coverage enabled may report line numbers that don't correspond
	    to the original sources.

	-covermode set,count,atomic
	    Set the mode for coverage analysis for the package[s]
	    being tested. The default is "set" unless -race is enabled,
	    in which case it is "atomic".
	    The values:
		set: bool: does this statement run?
		count: int: how many times does this statement run?
		atomic: int: count, but correct in multithreaded tests;
			significantly more expensive.
	    Sets -cover.

	-coverpkg pattern1,pattern2,pattern3
	    Apply coverage analysis in each test to packages matching the patterns.
	    The default is for each test to analyze only the package being tested.
	    See 'go help packages' for a description of package patterns.
	    Sets -cover.

	-cpu 1,2,4
	    Specify a list of GOMAXPROCS values for which the tests, benchmarks or
	    fuzz tests should be executed. The default is the current value
	    of GOMAXPROCS. -cpu does not apply to fuzz tests matched by -fuzz.

	-failfast
	    Do not start new tests after the first test failure.

	-fullpath
	    Show full file names in the error messages.

	-fuzz regexp
	    Run the fuzz test matching the regular expression. When specified,
	    the command line argument must match exactly one package within the
	    main module, and regexp must match exactly one fuzz test within
	    that package. Fuzzing will occur after tests, benchmarks, seed corpora
	    of other fuzz tests, and examples have completed. See the Fuzzing
	    section of the testing package documentation for details.

	-fuzztime t
	    Run enough iterations of the fuzz target during fuzzing to take t,
	    specified as a time.Duration (for example, -fuzztime 1h30s).
		The default is to run forever.
	    The special syntax Nx means to run the fuzz target N times
	    (for example, -fuzztime 1000x).

	-fuzzminimizetime t
	    Run enough iterations of the fuzz target during each minimization
	    attempt to take t, as specified as a time.Duration (for example,
	    -fuzzminimizetime 30s).
		The default is 60s.
	    The special syntax Nx means to run the fuzz target N times
	    (for example, -fuzzminimizetime 100x).

	-json
	    Log verbose output and test results in JSON. This presents the
	    same information as the -v flag in a machine-readable format.

	-list regexp
	    List tests, benchmarks, fuzz tests, or examples matching the regular
	    expression. No tests, benchmarks, fuzz tests, or examples will be run.
	    This will only list top-level tests. No subtest or subbenchmarks will be
	    shown.

	-parallel n
	    Allow parallel execution of test functions that call t.Parallel, and
	    fuzz targets that call t.Parallel when running the seed corpus.
	    The value of this flag is the maximum number of tests to run
	    simultaneously.
	    While fuzzing, the value of this flag is the maximum number of
	    subprocesses that may call the fuzz function simultaneously, regardless of
	    whether T.Parallel is called.
	    By default, -parallel is set to the value of GOMAXPROCS.
	    Setting -parallel to values higher than GOMAXPROCS may cause degraded
	    performance due to CPU contention, especially when fuzzing.
	    Note that -parallel only applies within a single test binary.
	    The 'go test' command may run tests for different packages
	    in parallel as well, according to the setting of the -p flag
	    (see 'go help build').

	-run regexp
	    Run only those tests, examples, and fuzz tests matching the regular
	    expression. For tests, the regular expression is split by unbracketed
	    slash (/) characters into a sequence of regular expressions, and each
	    part of a test's identifier must match the corresponding element in
	    the sequence, if any. Note that possible parents of matches are
	    run too, so that -run=X/Y matches and runs and reports the result
	    of all tests matching X, even those without sub-tests matching Y,
	    because it must run them to look for those sub-tests.
	    See also -skip.

	-short
	    Tell long-running tests to shorten their run time.
	    It is off by default but set during all.bash so that installing
	    the Go tree can run a sanity check but not spend time running
	    exhaustive tests.

	-shuffle off,on,N
	    Randomize the execution order of tests and benchmarks.
	    It is off by default. If -shuffle is set to on, then it will seed
	    the randomizer using the system clock. If -shuffle is set to an
	    integer N, then N will be used as the seed value. In both cases,
	    the seed will be reported for reproducibility.

	-skip regexp
	    Run only those tests, examples, fuzz tests, and benchmarks that
	    do not match the regular expression. Like for -run and -bench,
	    for tests and benchmarks, the regular expression is split by unbracketed
	    slash (/) characters into a sequence of regular expressions, and each
	    part of a test's identifier must match the corresponding element in
	    the sequence, if any.

	-timeout d
	    If a test binary runs longer than duration d, panic.
	    If d is 0, the timeout is disabled.
	    The default is 10 minutes (10m).

	-v
	    Verbose output: log all tests as they are run. Also print all
	    text from Log and Logf calls even if the test succeeds.

	-vet list
	    Configure the invocation of "go vet" during "go test"
	    to use the comma-separated list of vet checks.
	    If list is empty, "go test" runs "go vet" with a curated list of
	    checks believed to be always worth addressing.
	    If list is "off", "go test" does not run "go vet" at all.

The following flags are also recognized by 'go test' and can be used to
profile the tests during execution:

	-benchmem
	    Print memory allocation statistics for benchmarks.

	-blockprofile block.out
	    Write a goroutine blocking profile to the specified file
	    when all tests are complete.
	    Writes test binary as -c would.

	-blockprofilerate n
	    Control the detail provided in goroutine blocking profiles by
	    calling runtime.SetBlockProfileRate with n.
	    See 'go doc runtime.SetBlockProfileRate'.
	    The profiler aims to sample, on average, one blocking event every
	    n nanoseconds the program spends blocked. By default,
	    if -test.blockprofile is set without this flag, all blocking events
	    are recorded, equivalent to -test.blockprofilerate=1.

	-coverprofile cover.out
	    Write a coverage profile to the file after all tests have passed.
	    Sets -cover.

	-cpuprofile cpu.out
	    Write a CPU profile to the specified file before exiting.
	    Writes test binary as -c would.

	-memprofile mem.out
	    Write an allocation profile to the file after all tests have passed.
	    Writes test binary as -c would.

	-memprofilerate n
	    Enable more precise (and expensive) memory allocation profiles by
	    setting runtime.MemProfileRate. See 'go doc runtime.MemProfileRate'.
	    To profile all memory allocations, use -test.memprofilerate=1.

	-mutexprofile mutex.out
	    Write a mutex contention profile to the specified file
	    when all tests are complete.
	    Writes test binary as -c would.

	-mutexprofilefraction n
	    Sample 1 in n stack traces of goroutines holding a
	    contended mutex.

	-outputdir directory
	    Place output files from profiling in the specified directory,
	    by default the directory in which "go test" is running.

	-trace trace.out
	    Write an execution trace to the specified file before exiting.

Each of these flags is also recognized with an optional 'test.' prefix,
as in -test.v. When invoking the generated test binary (the result of
'go test -c') directly, however, the prefix is mandatory.

The 'go test' command rewrites or removes recognized flags,
as appropriate, both before and after the optional package list,
before invoking the test binary.

For instance, the command

	go test -v -myflag testdata -cpuprofile=prof.out -x

will compile the test binary and then run it as

	pkg.test -test.v -myflag testdata -test.cpuprofile=prof.out

(The -x flag is removed because it applies only to the go command's
execution, not to the test itself.)

The test flags that generate profiles (other than for coverage) also
leave the test binary in pkg.test for use when analyzing the profiles.

When 'go test' runs a test binary, it does so from within the
corresponding package's source code directory. Depending on the test,
it may be necessary to do the same when invoking a generated test
binary directly. Because that directory may be located within the
module cache, which may be read-only and is verified by checksums, the
test must not write to it or any other directory within the module
unless explicitly requested by the user (such as with the -fuzz flag,
which writes failures to testdata/fuzz).

The command-line package list, if present, must appear before any
flag not known to the go test command. Continuing the example above,
the package list would have to appear before -myflag, but could appear
on either side of -v.

When 'go test' runs in package list mode, 'go test' caches successful
package test results to avoid unnecessary repeated running of tests. To
disable test caching, use any test flag or argument other than the
cacheable flags. The idiomatic way to disable test caching explicitly
is to use -count=1.

To keep an argument for a test binary from being interpreted as a
known flag or a package name, use -args (see 'go help test') which
passes the remainder of the command line through to the test binary
uninterpreted and unaltered.

For instance, the command

	go test -v -args -x -v

will compile the test binary and then run it as

	pkg.test -test.v -x -v

Similarly,

	go test -args math

will compile the test binary and then run it as

	pkg.test math

In the first example, the -x and the second -v are passed through to the
test binary unchanged and with no effect on the go command itself.
In the second example, the argument math is passed through to the test
binary, instead of being interpreted as the package list.
```

# Official Go Docs for go tool cover

```

$ go tool cover -help
Usage of 'go tool cover':
Given a coverage profile produced by 'go test':
        go test -coverprofile=c.out

Open a web browser displaying annotated source code:
        go tool cover -html=c.out

Write out an HTML file instead of launching a web browser:
        go tool cover -html=c.out -o coverage.html

Display coverage percentages to stdout for each function:
        go tool cover -func=c.out

Finally, to generate modified source code with coverage annotations
for a package (what go test -cover does):
        go tool cover -mode=set -var=CoverageVariableName \
                -pkgcfg=<config> -outfilelist=<file> file1.go ... fileN.go

where -pkgcfg points to a file containing the package path,
package name, module path, and related info from "go build",
and -outfilelist points to a file containing the filenames
of the instrumented output files (one per input file).
See https://pkg.go.dev/internal/coverage#CoverPkgConfig for
more on the package config.

Flags:
  -V    print version and exit
  -func string
        output coverage profile information for each function
  -html string
        generate HTML representation of coverage profile
  -mode string
        coverage mode: set, count, atomic
  -o string
        file for output
  -outfilelist string
        file containing list of output files (one per line) if -pkgcfg is in use
  -pkgcfg string
        enable full-package instrumentation mode using params from specified config file
  -var string
        name of coverage variable to generate (default "GoCover")

  Only one of -html, -func, or -mode may be set.

```
