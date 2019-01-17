from locust import HttpLocust, TaskSet, task

class SimpleLocustTest(TaskSet):

    @task
    def get_something(self):
        with self.client.get("/assets/id/855dc1586b0cb9a07d7afa83bb769576", catch_response=True) as response:
#            print("Response status code:", response.status_code)
#            print("Response content:", response.text)
            json = response.json()
 #           print( json["header"]["code"] )
            if json["header"]["code"] != 0:
                response.failure("Error code is non-zero: " + json["header"]["code"] )

class LocustTests(HttpLocust):
    task_set = SimpleLocustTest


