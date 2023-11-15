package user_test

import (
	"black_box_test/user"
	"testing"
)

func TestGetOne(t *testing.T) {
	u, err := user.GetOne(999)

	if u != (user.User{}) {
		t.Error()
	}

	if err == nil {
		t.Error()
	}
}
