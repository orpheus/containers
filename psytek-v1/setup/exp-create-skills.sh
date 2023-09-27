curl --location --request POST 'localhost:8082/api/skillConfigs' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI3ZjkxN2YyYy1mOTE0LTQ1YzgtOThlNS04ZTg5NDcxNjEwMzEiLCJzY29wZSI6WyIqIl0sImV4cCI6MTY5NTg3MTYyNSwiaWF0IjoxNjk1ODI4NDI1LCJpc3MiOiJnaXRodWIuY29tL29ycGhldXMvZXhwIn0.0Y3Y-2M3kpEduokyGICstV68KDcJcecPkpyWj-5TaMw' \
--header 'Content-Type: application/json' \
--data-raw '[
    {
        "id": "WORK",
        "name": "Work"
    },
    {
        "id": "READ",
        "name": "Reading"
    },
    {
        "id": "EX",
        "name": "Exercise"
    },
    {
        "id": "TV",
        "name": "Television"
    },
    {
        "id": "MED",
        "name": "Meditation"
    },
    {
        "id": "FAM",
        "name": "Family"
    },
    {
        "id": "FRND",
        "name": "Friends"
    }
]'