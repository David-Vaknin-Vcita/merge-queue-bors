jenkins="https://david.vaknin:118b976266caeac861307b7441b1e682a8@jenkins.eu.vchost.co"
jenkins_job="view/all/job/test-merge-queue2"
TOKEN="shipit"
print=dev
./jenkins_remote_trigger.sh \
            -h ${jenkins} \
            -j ${jenkins_job} \
            -p "token=${TOKEN}&PRINT=${print}"