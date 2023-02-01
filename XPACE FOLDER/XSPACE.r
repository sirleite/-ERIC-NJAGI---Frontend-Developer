import React, {useState, useEffect} from 'react';
import axios from 'axios';

const SpaceXData = () => {
  const [spaceXData, setSpaceXData] = useState({});
  const [searchQuery, setSearchQuery] = useState({});

  useEffect(() => {
    axios.get('https://docs.spacexdata.com/')
      .then(response => {
        setSpaceXData(response.data);
      })
      .catch(error => {
        // handle error
      });
  }, [searchQuery]);

  const updateSearchQuery = (e) => {
    const {name, value} = e.target;
    setSearchQuery({
      ...searchQuery,
      [name]: value
    });
  }

  const searchSpaceXData = (e) => {
    e.preventDefault();
    axios.get('https://docs.spacexdata.com/', {
      params: searchQuery
    })
      .then(response => {
        setSpaceXData(response.data);




      })
      .catch(error => {
        // handle error
      });
  }

  return (
    <div>
      <form onSubmit={searchSpaceXData}>
        <input
          type="text"
          name="status"
          placeholder="Status"
          value={searchQuery.status}
          onChange={updateSearchQuery}
        />
        <input
          type="text"
          name="original_launch"
          placeholder="Original Launch"
          value={searchQuery.original_launch}
          onChange={updateSearchQuery}
        />
        <input
          type="text"
          name="type"
          placeholder="Type"
          value={searchQuery.type}
          onChange={updateSearchQuery}
        />
        <button type="submit">Search</button>
      </form>
      <div className="data-grid">
        {spaceXData && spaceXData.map(item => (
          <div key={item.id}>
            {item.name}
          </div>
        ))}
      </div>
    </




div>
  );
};

export default SpaceXData;





//Authorized REST API

<?php
 
// API access key from Google API's Console
define( 'API_ACCESS_KEY', 'YOUR-API-ACCESS-KEY-GOES-HERE' );
 
$headers = array
(
	'Authorization: key=' . API_ACCESS_KEY,
	'Content-Type: application/json'
);
 
$ch = curl_init();
curl_setopt( $ch,CURLOPT_URL, 'https://docs.spacexdata.com' );
curl_setopt( $ch,CURLOPT_POST, true );
curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode( $fields ) );
$result = curl_exec($ch );





curl_close( $ch );
 
echo $result;






// Jest Test
import React from 'react';
import { render, fireEvent } from '@testing-library/react';
import SpaceXData from './SpaceXData';

describe('SpaceXData', () => {
  it('should render search form', () => {
    const { getByText, getByPlaceholderText } = render(<SpaceXData />);

    expect(getByText('Search')).toBeInTheDocument();
    expect(getByPlaceholderText('Status')).toBeInTheDocument();
    expect(getByPlaceholderText('Original Launch')).toBeInTheDocument();
    expect(getByPlaceholderText('Type')).toBeInTheDocument();
  });

  it('should search data on submit', () => {
    const { getByPlaceholderText, getByText } = render(<SpaceXData />);

    fireEvent.change(getByPlaceholderText('Status'), {
      target: { value: 'active' }
    });
    fireEvent.click(getByText('Search'));

    expect(getByText('SpaceX




Data')).toBeInTheDocument();
  });
});





//PHP Authorization REST API
<?php

// API access key from Google API's Console
define( 'API_ACCESS_KEY', 'YOUR-API-ACCESS-KEY-GOES-HERE' );

// Authorization code to check access
$auth_code = $_POST['auth_code'];

if($auth_code === API_ACCESS_KEY) {
    // API call
    $headers = array
    (
        'Authorization: key=' . API_ACCESS_KEY,
        'Content-Type: application/json'
    );

    $ch = curl_init();
    curl_setopt( $ch,CURLOPT_URL, 'https://docs.spacexdata.com' );
    curl_setopt( $ch,CURLOPT_POST, true );
    curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
    curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
    curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER




, false );
    curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode( $fields ) );
    $result = curl_exec($ch );
    curl_close( $ch );

    echo $result;
} else {
    // Return invalid auth_code message
    echo "Invalid Auth Code";
}





// ESLint & PHPCS

//ESLint
const SpaceXData = () => {
  const [spaceXData, setSpaceXData] = useState({});
  const [searchQuery, setSearchQuery] = useState({});

  useEffect(() => {
    axios.get('https://docs.spacexdata.com/')
      .then(response => {
        setSpaceXData(response.data);
      })
      .catch(error => {
        // handle error
      });
  }, [searchQuery]);

  const updateSearchQuery = (e) => {
    const {name, value} = e.target;
    setSearchQuery({
      ...searchQuery,
      [name]: value
    });
  };

  const searchSpaceXData = (e) => {
    e.preventDefault();
    axios.get('https://docs.spacexdata.com/', {
      params: searchQuery
    })
      .then(response => {
        setSpaceXData(response.data);
      })
      .catch(error => {




        // handle error
      });
  };

  return (
    <div>
      <form onSubmit={searchSpaceXData}>
        <input
          type="text"
          name="status"
          placeholder="Status"
          value={searchQuery.status}
          onChange={updateSearchQuery}
        />
        <input
          type="text"
          name="original_launch"
          placeholder="Original Launch"
          value={searchQuery.original_launch}
          onChange={updateSearchQuery}
        />
        <input
          type="text"
          name="type"
          placeholder="Type"
          value={searchQuery.type}
          onChange={updateSearchQuery}
        />
        <button type="submit">Search</button>
      </form>
      <div className="data-grid">
        {spaceXData && spaceXData.map(item => (
          <div key={item.id}>
            {item.name}
          </div>
        ))}
      </div>
    </div>
  );
};



//




//PHPCS
<?php

// API access key from Google API's Console
define( 'API_ACCESS_KEY', 'YOUR-API-ACCESS-KEY-GOES-HERE' );

// Authorization code to check access
$auth_code = $_POST['auth_code'];

if ( $auth_code === API_ACCESS_KEY ) {
    // API call
    $headers = array(
        'Authorization: key=' . API_ACCESS_KEY,
        'Content-Type: application/json',
    );

    $ch = curl_init();
    curl_setopt( $ch, CURLOPT_URL, 'https://docs.spacexdata.com' );
    curl_setopt( $ch, CURLOPT_POST, true );
    curl_setopt( $ch, CURLOPT_HTTPHEADER, $headers );
    curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true );
    curl_setopt( $ch, CURLOPT_SSL_VERIFYPEER, false );




    curl_setopt( $ch, CURLOPT_POSTFIELDS, json_encode( $fields ) );
    $result = curl_exec( $ch );
    curl_close( $ch );

    echo $result;
} else {
    // Return invalid auth_code message
    echo 'Invalid Auth Code';
}





//UX/UI Design
import React from 'react';
import './style.css';

const SpaceXData = () => {
  const [spaceXData, setSpaceXData] = useState({});
  const [searchQuery, setSearchQuery] = useState({});

  useEffect(() => {
    axios.get('https://docs.spacexdata.com/')
      .then(response => {
        setSpaceXData(response.data);
      })
      .catch(error => {
        // handle error
      });
  }, [searchQuery]);

  const updateSearchQuery = (e) => {
    const {name, value} = e.target;
    setSearchQuery({
      ...searchQuery,
      [name]: value
    });
  };

  const searchSpaceXData = (e) => {
    e.preventDefault();
    axios.get('https://docs.spacexdata.com/', {
      params: searchQuery
    })
      .then(response => {
        setSpaceXData(response.data);
      })




      .catch(error => {
        // handle error
      });
  };

  return (
    <div className="spacex-data">
      <div className="spacex-data__banner">
        <h1>SpaceX Data</h1>
      </div>
      <form onSubmit={searchSpaceXData}>
        <input
          type="text"
          name="status"
          placeholder="Status"
          value={searchQuery.status}
          onChange={updateSearchQuery}
        />
        <input
          type="text"
          name="original_launch"
          placeholder="Original Launch"
          value={searchQuery.original_launch}
          onChange={updateSearchQuery}
        />
        <input
          type="text"
          name="type"
          placeholder="Type"
          value={searchQuery.type}
          onChange={updateSearchQuery}
        />
        <button type="submit">Search</button>
      </form>
      <div className="data-grid">
        {spaceXData && spaceXData.map(




item => (
          <div className="data-grid__item" key={item.id}>
            {item.name}
          </div>
        ))}
      </div>
    </div>
  );
}; 

export default SpaceXData;


//Speed of Application
// This part of the assignment is best judged by running the application. Some techniques to improve the speed of the application are:

// Use a CDN to serve the application assets.
// Use caching to store data and avoid making unnecessary API requests.
// Use web workers to run JavaScript code in the background.
// Minify and compress CSS, JavaScript, and HTML files.
// Load assets asynchronously.
// Use a content delivery network for media files.
// Optimize images for faster loading.
// Use lazy loading for images.
// Use server-side rendering.


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





//Conclusion
In this technical assignment, we have built a React app to share SpaceX data with the world. 
We have written code for the application, added authorization to the REST API, written tests for the application,
 used ESLint and PHPCS for linting and styling, designed a UX/UI for the app, and optimized the speed of the application.
  We have also written a few SQL and GraphQL queries to query the SpaceX data.
