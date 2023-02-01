//SQL Query
SELECT * 
FROM spacex_data 
WHERE status = 'active' 
AND original_launch = '2020-09-15' 
AND type = 'rocket';


SELECT name 
FROM spacex_data 
WHERE status = 'active' 
AND original_launch = '2020-09-15' 
AND type = 'rocket';


SELECT name, status, original_launch, type 
FROM spacex_data 
WHERE status = 'active' 
AND original_launch = '2020-09-15' 
AND type = 'rocket';


SELECT name, status, original_launch, type 
FROM spacex_data 
WHERE status = 'active' 
OR original_launch = '2020-09-15' 
OR type = 'rocket';


//GraphQL Query
query {
  spacexData(status: "active", original_launch: "2020-09-15", type: "rocket") {
    name
    status
    original_launch
    type
  }
}


query {
  spacexData(status: "active", original_launch: "2020-09-15") {
    name
  }
}





query {
  spacexData {
    name
    status
    original_launch
    type
  }
}


query {
  spacexData(status: "active") {
    name
  }
}


query {
  spacexData(original_launch: "2020-09-15") {
    name
  }
}


query {
  spacexData(type: "rocket") {
    name
  }
}


query {
  spacexData(status: "active", original_launch: "2020-09-15", type: "rocket") {
    name
    status
    original_launch
    type
  }
}


query {
  spacexData(status: "active", original_launch: "2020-09-15", type: "rocket") {
    name
    status
    original_launch
    type
    payloads {
      name
      type
      mass
    }
  }
}
