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