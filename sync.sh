# Sample Code Testing 

# Fuzz Testing 

mkdir -p sample_test/user

cp benchmark_test/go.mod sample_test/go.mod
cp benchmark_test/main.go sample_test/main.go
cp benchmark_test/user/* sample_test/user/




# Benchmarking 

mkdir -p benchmark_test/user

cp black_box_test/user/component_test.go benchmark_test/user/component_test.go
cp black_box_test/user/logic_bb_test.go benchmark_test/user/logic_bb_test.go
cp black_box_test/user/logic_test.go benchmark_test/user/logic_test.go
cp black_box_test/user/logic.go benchmark_test/user/logic.go
cp black_box_test/user/service.go benchmark_test/user/service.go
cp black_box_test/go.mod benchmark_test/go.mod
cp black_box_test/main.go benchmark_test/main.go
cp black_box_test/cover.out benchmark_test/cover.out


# Folder re-org 

mkdir -p user 
mkdir -p tests 
mkdir -p tests/black_box_tests 
mkdir -p tests/component_tests
mkdir -p tests/unit_tests
mkdir -p tests/parallel_tests

cp black_box_test/user/component_test.go tests/component_tests/
cp black_box_test/user/logic_bb_test.go tests/black_box_tests/
cp black_box_test/user/logic_test.go tests/unit_tests/

cp black_box_test/user/logic.go user/logic.go
cp black_box_test/user/service.go user/service.go

cp black_box_test/main.go tests/main.go 
cp black_box_test/go.mod tests/go.mod 



mkdir -p black_box_test/user

cp unit_test/user/logic.go black_box_test/user/logic.go
cp unit_test/user/logic_test.go black_box_test/user/logic_test.go
cp unit_test/user/component_test.go black_box_test/user/component_test.go
cp unit_test/user/service.go black_box_test/user/service.go
cp unit_test/go.mod black_box_test/go.mod
cp unit_test/main.go black_box_test/main.go

mkdir -p component_test/user

cp unit_test/user/logic.go component_test/user/logic.go
cp unit_test/user/logic_test.go component_test/user/logic_test.go
cp unit_test/user/component_test.go component_test/user/component_test.go
cp unit_test/user/service.go component_test/user/service.go
cp unit_test/go.mod component_test/go.mod
cp unit_test/main.go component_test/main.go


mkdir -p parallel_test/user

cp unit_test/user/logic.go parallel_test/user/logic.go
cp unit_test/user/logic_test.go parallel_test/user/logic_test.go
cp unit_test/user/service.go parallel_test/user/service.go
cp unit_test/go.mod parallel_test/go.mod
cp unit_test/main.go parallel_test/main.go