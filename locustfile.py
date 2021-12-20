import time
import argparse, sys, os
from locust import HttpUser, task, between

# Get environment variables
path1 = os.getenv('PATH1')
path2 = os.getenv('PATH2')
path3 = os.getenv('PATH3')


class QuickstartUser(HttpUser):
    wait_time = between(1, 5)

    @task()
    def load_test1(self):
        self.client.get(path1)
        self.client.get(path2)
        self.client.get(path3)
