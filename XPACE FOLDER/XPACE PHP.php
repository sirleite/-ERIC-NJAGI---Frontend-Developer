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


