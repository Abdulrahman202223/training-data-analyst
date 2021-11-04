# retrieve CLOUDRUN_REGION
MYDIR="$(dirname "$0")"
source "${MYDIR}/config.sh"

if [[ -z "${CLOUDRUN_REGION}" ]]; then
  echo "CLOUDRUN_REGION not set"
  exit 1
fi

SVCHOST="$(gcloud run services describe simplebank-rest --platform managed --region ${CLOUDRUN_REGION} --format 'value(status.url)')"
echo $SVCHOST

# ATMS
echo "ATMs"
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "abc-strasse", "latitude": 53.553752, "longitude": 9.986229 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "arnulfpark", "latitude": 48.1429, "longitude": 11.541025 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "austin", "latitude": 30.266014, "longitude": -97.749222 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "bakery-square", "latitude": 40.45692123, "longitude": -79.91713823 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "belgrave-house", "latitude": 51.495005, "longitude": -0.146652 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "bema-plaza", "latitude": 51.117687, "longitude": 17.041737 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "central-saint-giles", "latitude": 51.51609838, "longitude": -0.127086005 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "charleston", "latitude": 37.422777, "longitude": -122.088587 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "chelsea-market", "latitude": 40.742438, "longitude": -74.005829 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "cl4", "latitude": 37.426982, "longitude": -122.071066 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "crittenden", "latitude": 37.42584, "longitude": -122.072289 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "electra-tower", "latitude": 32.070043, "longitude": 34.794087 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "fulton-market", "latitude": 41.887289, "longitude": -87.652621 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "gangnam-center", "latitude": 37.49999744, "longitude": 127.0365541 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "googleplex", "latitude": 37.421512, "longitude": -122.084101 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "gordon-house", "latitude": 53.339966, "longitude": -6.235885 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "grand-canal-dock", "latitude": 53.339728, "longitude": -6.237073 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "gropius", "latitude": 52.523291, "longitude": 13.392442 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "kungsbron", "latitude": 59.3334719, "longitude": 18.0543642 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "lakeview-plaza", "latitude": 47.66954, "longitude": -122.199407 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "mapletree", "latitude": 1.276331, "longitude": 103.799774 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "mp1", "latitude": 37.404934, "longitude": -122.021411 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "mp5", "latitude": 37.406649, "longitude": -122.025409 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "nyc-9th", "latitude": 40.74136, "longitude": -74.003199 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "nyc-hudson", "latitude": 40.726311, "longitude": -74.008058 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "omega", "latitude": 17.458461, "longitude": 78.372452 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "pancras-square", "latitude": 51.533107, "longitude": -0.125876 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "park-view", "latitude": 47.649413, "longitude": -122.350552 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "pateo-malzoni", "latitude": -23.586779, "longitude": -46.68201 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "peachtree", "latitude": 33.784806, "longitude": -84.387556 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "pear-ave", "latitude": 37.414924, "longitude": -122.075176 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "pearl-place", "latitude": 40.021603, "longitude": -105.25445 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "regus-mumbai", "latitude": 19.054751, "longitude": 72.887066 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "reston", "latitude": 38.9483181, "longitude": -77.3375166 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "rmz-infinity", "latitude": 12.9938522, "longitude": 77.6602337 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "roppongi-hills", "latitude": 35.66047, "longitude": 139.729231 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "rue-de-londres", "latitude": 48.87735, "longitude": 2.32992 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "seaport", "latitude": 37.510854, "longitude": -122.201355 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "signature-towers", "latitude": 28.461691, "longitude": 77.048712 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "spear-street", "latitude": 37.789972, "longitude": -122.390013 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "spruce-goose", "latitude": 33.977601, "longitude": -118.408207 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "stierlin", "latitude": 37.42437083, "longitude": -122.0761231 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "sydney", "latitude": -33.866638, "longitude": 151.195672 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "tc1", "latitude": 37.403694, "longitude": -122.031583 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "tower-101", "latitude": 25.033447, "longitude": 121.564901 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "verge", "latitude": 32.909578, "longitude": -117.181893 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "viger-ave", "latitude": 45.503321, "longitude": -73.562787 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "vista-hub", "latitude": 14.5430479, "longitude": 121.0473092 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "warsaw-fin-center", "latitude": 52.233448, "longitude": 21.001668 }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/atms -d '{ "name": "wfc", "latitude": 31.23464, "longitude": 121.507662 }'

# CUSTOMERS
echo
echo "Customers"
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers -d '{ "email": "abe@example.org", "firstName": "Abraham", "lastName": "Alden" }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers -d '{ "email": "khart@example.org", "firstName": "Kurt", "lastName": "Hartmann" }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers -d '{ "email": "emy@example.org", "firstName": "Emy", "lastName": "Pierre" }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers -d '{ "email": "vfeldt@example.org", "firstName": "Valentina", "lastName": "Feldt" }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers -d '{ "email": "castillo@example.org", "firstName": "Macario", "lastName": "Castillo" }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers -d '{ "email": "chenli@example.org", "firstName": "Chen", "lastName": "Li" }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers -d '{ "email": "dayo@example.org", "firstName": "Dayo", "lastName": "Kayode" }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers -d '{ "email": "sayumi@example.org", "firstName": "Sayumi", "lastName": "Matsuda" }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers -d '{ "email": "nadya@example.org", "firstName": "Nadya", "lastName": "Romanov" }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers -d '{ "email": "ehopkins@example.org", "firstName": "Erica", "lastName": "Hopkins" }'

# ACCOUNTS
echo
echo "Accounts"
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/abe@example.org/accounts -d '{ "name": "savings", "balance": 3000, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/abe@example.org/accounts -d '{ "name": "checking", "balance": 1000, "overdraftAllowed": true }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/khart@example.org/accounts -d '{ "name": "savings", "balance": 700, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/khart@example.org/accounts -d '{ "name": "checking", "balance": 900, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/emy@example.org/accounts -d '{ "name": "savings", "balance": 9000, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/emy@example.org/accounts -d '{ "name": "checking", "balance": 1000, "overdraftAllowed": true }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/emy@example.org/accounts -d '{ "name": "retirement", "balance": 340000, "overdraftAllowed": true }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/vfeldt@example.org/accounts -d '{ "name": "savings", "balance": 14000, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/castillo@example.org/accounts -d '{ "name": "savings", "balance": 140000, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/castillo@example.org/accounts -d '{ "name": "checking", "balance": 19000, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/chenli@example.org/accounts -d '{ "name": "savings", "balance": 180000, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/dayo@example.org/accounts -d '{ "name": "savings", "balance": 14000, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/sayumi@example.org/accounts -d '{ "name": "checking", "balance": 24000, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/nadya@example.org/accounts -d '{ "name": "savings", "balance": 24000, "overdraftAllowed": false }'
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" -H "Content-Type:application/json" -X POST ${SVCHOST}/customers/ehopkins@example.org/accounts -d '{ "name": "savings", "balance": 18000, "overdraftAllowed": false }'
