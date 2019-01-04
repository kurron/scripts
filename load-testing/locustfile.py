from locust import HttpLocust, TaskSet, task

class SimpleLocustTest(TaskSet):

    @task
    def get_something(self):
        self.client.get("/assets/id/855dc1586b0cb9a07d7afa83bb769576")

class LocustTests(HttpLocust):
    task_set = SimpleLocustTest


