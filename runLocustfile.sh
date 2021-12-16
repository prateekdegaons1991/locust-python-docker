#!/bin/bash
#
# Run locust load test
#
#####################################################################

locust -f $LOCUST_FILE --headless -u 100 -r 10 -H https://prateeks-blog.herokuapp.com --run-time 1min