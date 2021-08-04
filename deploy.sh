JSON=$(curl -H "Content-Type: application/json" \
-d '{"username":"09b3ef04-2858-4c85-a558-7c084a893a45", "password":"goM1TjxXztIrQ2H2Dsek15vjnA8="}' \
https://us-east1.cloud.twistlock.com/us-2-158257010/api/v1/authenticate)

TOKEN=$( jq -r “.token” <<<“$JSON”)

if [[ ! -f ./twistcli || $(./twistcli --version) != *"21.04.439"* ]]; then curl --progress-bar -L -k --header "authorization: Bearer $TOKEN --address https://us-east1.cloud.twistlock.com/us-2-158257010 --cluster-address us-east1.cloud.twistlock.com
