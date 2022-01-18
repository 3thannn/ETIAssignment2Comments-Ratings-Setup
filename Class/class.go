package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"strconv"

	_ "github.com/go-sql-driver/mysql"
	"github.com/gorilla/handlers"
	"github.com/gorilla/mux"
)

type ClassObject struct {
	ID   int
	Name string
}

func getClass(db *sql.DB, ID int) ClassObject {
	classQuery := fmt.Sprintf("SELECT ClassID, Name FROM Class WHERE ClassID = '%d'", ID)

	classResults, err := db.Query(classQuery)
	if err != nil {
		panic(err.Error())
	}
	var classObject ClassObject
	for classResults.Next() {
		classResults.Scan(&classObject.ID, &classObject.Name)
	}

	return classObject
}

func getClasses(db *sql.DB) []ClassObject {
	classQuery := "SELECT ClassID, Name FROM Class"

	classResults, err := db.Query(classQuery)
	if err != nil {
		panic(err.Error())
	}

	var classList []ClassObject
	for classResults.Next() {
		var classObject ClassObject
		classResults.Scan(&classObject.ID, &classObject.Name)
		classList = append(classList, classObject)
	}

	return classList
}

func classes(w http.ResponseWriter, r *http.Request) {
	db, err := sql.Open("mysql", "root:password@tcp(127.0.0.1:3306)/ETIAssignment2TestDB")
	// handle error
	if err != nil {
		panic(err.Error())
	}
	if err != nil {
		panic(err.Error())
	}
	if r.Method == "GET" {
		if err == nil {
			classList := getClasses(db)
			if len(classList) > 0 {
				fmt.Println(classList)
				json.NewEncoder(w).Encode(classList)
			} else {
				w.WriteHeader(http.StatusNotFound)
			}
		} else {
			fmt.Printf("The HTTP request failed with error %s\n", err)
		}
	}
}

func class(w http.ResponseWriter, r *http.Request) {
	db, err := sql.Open("mysql", "root:password@tcp(127.0.0.1:3306)/ETIAssignment2TestDB")
	// handle error
	if err != nil {
		panic(err.Error())
	}
	params := mux.Vars(r)
	classID := params["classid"]
	classIDint, err := strconv.Atoi(classID)
	if err != nil {
		panic(err.Error())
	}
	if r.Method == "GET" {
		if err == nil {
			classObject := getClass(db, classIDint)
			fmt.Println(classObject)
			json.NewEncoder(w).Encode(classObject)
		} else {
			fmt.Printf("The HTTP request failed with error %s\n", err)
		}
	}
}

func testcode(w http.ResponseWriter, r *http.Request) {
	if r.Method == "GET" {
		json.NewEncoder(w).Encode("Hello this is a pass")
		w.WriteHeader(http.StatusCreated)
	}
}

func main() {
	// This is to allow the headers, origins and methods all to access CORS resource sharing
	headers := handlers.AllowedHeaders([]string{"X-Requested-With", "Content-Type"})
	origins := handlers.AllowedOrigins([]string{"*"})
	methods := handlers.AllowedMethods([]string{"GET", "POST", "PUT", "DELETE"})

	router := mux.NewRouter()
	router.HandleFunc("/api/test", testcode).Methods("GET")

	router.HandleFunc("/api/class", classes).Methods("GET")

	router.HandleFunc("/api/getclass/{classid}", class).Methods("GET")

	// router.HandleFunc("/api/Rating/student/sent/{CreatorID}", postedRatings).Methods("GET")

	// router.HandleFunc("/api/Rating/class/sent/{CreatorID}", postedRatings).Methods("GET")

	// router.HandleFunc("/api/Rating/module/sent/{CreatorID}", postedRatings).Methods("GET")

	// router.HandleFunc("/api/Rating/tutor/sent/{CreatorID}", postedRatings).Methods("GET")

	// router.HandleFunc("/api/Rating/received/{CreatorID}", receivedRatings).Methods("GET")

	fmt.Println("Listening at port 5006")
	log.Fatal(http.ListenAndServe(":5006", handlers.CORS(headers, origins, methods)(router)))
}
