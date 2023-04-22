BACKEND_IP=$(tail -n 1 .circleci/ansible/inventory.txt)

# Fetch and prepare the BACKEND_IP env var
  export API_URL="http://${BACKEND_IP}:3030"
  echo "${API_URL}"
  if curl --connect-timeout 10 "${API_URL}/api/status" | grep "ok"
  then
  	exit 0
  else
  	exit 1
  fi