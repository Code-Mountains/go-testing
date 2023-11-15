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

go tool cover -html cover.out
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