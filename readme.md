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