function netatmo
    set client_id '61e7bdb6af88ae69a7492c58'
    set client_secret 'Na0GcOGUxK7I8cUePT5MawuaQWRomG51'
    set username 'bararararatty@gmail.com'
    set password 'VFqU!T3DrX%$Sr'
    set grant_type 'password'
    set scope 'read_station'

    # fetch access_token
    set form "grant_type=$grant_type&client_id=$client_id&client_secret=$client_secret&username=$username&password=$password&scope=$scope"
    set access_token (curl -s -d $form "https://api.netatmo.net/oauth2/token" | jq -r ".access_token")

    # fetch dashboard
    curl -s "https://api.netatmo.net/api/getstationsdata?access_token=$access_token" | jq -r ".body.devices[0].dashboard_data.CO2"
end
