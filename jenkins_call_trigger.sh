jenkins="https://david.vaknin:118b976266caeac861307b7441b1e682a8@jenkins.eu.vchost.co"
jenkins_job="view/Infrastructure/job/Common_deployment"

"SHIPIT: Set to 1 to allow your script to know its executed by Shipit
echo $SHIPIT_LINK: URL to the task output, useful to broadcast it in an IRC channel
echo $SHIPIT_USER: Full name of the user that triggered the deploy/task
echo $GITHUB_REPO_NAME: Name of the GitHub repository being used for the current deploy/task.
echo $GITHUB_REPO_OWNER: The GitHub username of the repository owner for the current deploy/task.
echo $ENVIRONMENT: The stack environment (e.g production / staging)
echo $BRANCH: The stack branch (e.g master)
echo $LAST_DEPLOYED_SHA: The git SHA of the last deployed commit
echo $DIFF_LINK: URL to the diff on GitHub.
echo $TASK_ID: ID of the task that is running"

TOKEN="shipit"
print=dev
/bin/sh ${PWD}/jenkins_remote_trigger.sh \
            -h ${jenkins} \
            -j ${jenkins_job} \
            -p "token=${TOKEN}&PROJECT_NAME=${GITHUB_REPO_NAME}&BRANCH=${BRANCH}&ENVIRONMENT=${ENVIRONMENT}&SHA=${SHA}"