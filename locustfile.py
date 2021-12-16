import base64

from locust import HttpUser, task


class WebTasks(HttpUser):

    @task
    def load(self):
        response = self.client.get("/post/1")
        if response.status_code != 200:
            print("Failed")
            
        else:
            print("Success")
