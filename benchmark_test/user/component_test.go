package user

import (
	"bytes"
	"encoding/json"
	"net/http"
	"testing"
)

type mockResponseWriter struct {
	bytes.Buffer
}

func (mrw mockResponseWriter) WriteHeader(status int) {}

func (mrw mockResponseWriter) Header() http.Header {
	return http.Header{}
}

func (mrw mockResponseWriter) getData() []byte {
	return mrw.Bytes()
}

func TestHandler(t *testing.T) {
	users = []User{
		User{
			ID:       4,
			Username: "kdangol",
		},
		User{
			ID:       3,
			Username: "codemountains",
		},
	}

	req, err := http.NewRequest(http.MethodGet, "/users", nil)

	if err != nil {
		t.Fatal(err)
	}

	rw := mockResponseWriter{}

	expect, err := json.Marshal(users)

	if err != nil {
		t.Fatal(err)
	}

	Handler(&rw, req)

	got := rw.getData()

	if !bytes.Equal(expect, got) {
		t.Fail()
	}

}

func BenchmarkHandler(b *testing.B) {
	users = []User{
		User{
			ID:       3,
			Username: "codemountains",
		},
		User{
			ID:       4,
			Username: "kdangol",
		},
	}

	req, err := http.NewRequest(http.MethodGet, "/users", nil)

	if err != nil {
		b.Fatal(err)
	}

	b.ResetTimer()

	b.Log(b.N)

	for i := 0; i < b.N; i++ {
		rw := mockResponseWriter{}

		if err != nil {
			b.Fatal(err)
		}

		Handler(&rw, req)
	}
}
