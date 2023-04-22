ID=$1

URL="http://udapeople-${ID:0:7}.s3-website-us-east-1.amazonaws.com/#/employees"            
echo ${URL} 
if curl -s --connect-timeout 10 ${URL} | grep "Welcome"
then
  return 1
else
  return 1
fi