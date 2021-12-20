#!/bin/bash
#
# Run locust load test
#
#####################################################################

#locust -f $LOCUST_FILE --headless -u 100 -r 10 -H https://prateeks-blog.herokuapp.com --run-time 1min

locust --headless --run-time $RUN_TIME -f $LOAD_FILE --users $USERS --spawn-rate $SPAWN_RATE -H $HOST