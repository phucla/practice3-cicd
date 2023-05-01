# Fetch the Old workflow ID
export OldWorkflowID=$(aws cloudformation \
          list-exports --query "Exports[?Name==\`WorkflowID\`].Value" \
          --no-paginate --output text)
echo OldWorkflowID: "${OldWorkflowID}"
echo CIRCLE_WORKFLOW_ID "${CIRCLE_WORKFLOW_ID:0:7}"

if [[ "${CIRCLE_WORKFLOW_ID:0:7}" != "${OldWorkflowID}" ]]
then
    echo "Start to clean up..."
    aws s3 rm "s3://udapeople-${OldWorkflowID}" --recursive
    aws cloudformation delete-stack --stack-name "udapeople-backend-${OldWorkflowID}"
    aws cloudformation delete-stack --stack-name "udapeople-frontend-${OldWorkflowID}"
    echo "Delete done"
else
    echo 'No stack, file clean'
fi