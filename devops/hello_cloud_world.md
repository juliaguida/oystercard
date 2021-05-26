# Hello Cloud World!

For this project, we will be using AWS, however, bear in mind that the concepts we are going to work with can be extrapolated quite easily from one Cloud provider to another!

This is a list of tasks we are going to go through:


## Create a GitHub repository

This repository will serve as the place where your [project files](https://github.com/makersacademy/course/tree/devops-jh/devops/files) will live and, also, the place where you will set up your GitHub Actions for the CI/CD pipeline.


## Create an AWS Account

For the sake of this project, we are going to use AWS as our designated Cloud provider. In order to work with AWS, you need to [create an account](https://aws.amazon.com/free/).

You will need to enter a debit/credit card for this. However, we are going to use only one AWS Service (S3) which is **free tier eligible for a year**, so it should not generate any costs under your account.


## Create an S3 Bucket on AWS

Now that your AWS Account is created, log into the AWS Console and search for **S3** under *Services*. Your task will be to create a bucket that will be the place where you will host your static website eventually.

:exclamation: It is a key to **enable static website hosting on the bucket**. If you haven't done so when creating it, you can still do it in the *Properties* tab of your bucket, right at the end. The *index* and *error* documents should match with the titles of the HTML project files of this repository, which you saw before already.


## Create GitHub Actions Workflow on your repository

If you have never used GitHub Actions before, [this tutorial from GitHub](https://docs.github.com/en/actions/learn-github-actions/introduction-to-github-actions) will come in really handy to understand how it works and different pieces you need to create your first workflow.


## Create, set and run CI job

For our project, the idea is that this job is responsible for running the Python tests included in [this file](https://github.com/makersacademy/course/blob/devops-jh/devops/files/sample_unit_tests.py).

:exclamation: Bear in mind that you will have to set up your workflow to use Python on the step(s) you want to run. GitHub Actions has a great marketplace with existing actions that you can benefit from without having to go too far in setting up things, [this may be helpful](https://docs.github.com/en/actions/guides/building-and-testing-python).

If the test fails, your job will be to fix the failing tests by analysing the outcome on the GitHub Action flow.
If the tests succeed, this means we're ready to move on :sunglasses:


## Create, set and run CD job

Now that our CI job is ready, our job will be to create the CD job in the existing GitHub Actions workflow in order to deploy our static app onto our bucket and share it with the world!

The files that we need for the static website are under `./files/www`. Why do we need exactly these two files? 
- Well, if you haven't done it when creating your bucket, your task is to find out how to enable *static website hosting* on the bucket and see if you can find more information about these two files specifically with these titles.

:exclamation: In order to deploy your website files to your S3 Bucket, you need to [add some credentials](https://github.com/aws-actions/configure-aws-credentials) that are sent along with the request to update your S3 Bucket when your CD job is running and doing its task.

Imagine what would happen if this step was not mandatory: It would mean that anyone would be able to update your S3 Bucket just knowing the name of it! :fire:

After you've successfully set up and run your CD job, these files should be in our S3 Bucket. We then need to find the URL to access our static website.
- Use the AWS Console to access your S3 Bucket and find that link.

After you've found the link. What happens when you try to access the URL on your browser?

S3 Buckets are private by default, which means they're not publicly accessible on the web. So if you did not unblock public access when you created the bucket...
- Can you find out how to make your bucket public instead so that you can access your website on the browser?

If you're still getting a :lock: *403 Forbidden* response when trying to access the public URL of your static website, it could be because your HTML files were there before you enabled public access to your bucket, and therefore these objects are not made public yet!
- There's a way to select objects within the bucket individually and make them public, your task is to do exactly that!

It's useful that we learned all this about S3 in such a small project! We know now that, apart from the whole bucket, each object can be made public or private as we see fit :relieved:


## Are we doing things the right way?

The outcome of the CI job should logically determine whether the CD job will run or not in our GitHub Action workflow. However, depending on how you set your workflow, that may not happening at the moment and the CD job may be running regardless of whether the CI job is passing or not! (What is then the purpose of the CI job? :boom:)

In fact, if you check closely when you push new changes, they may be even running in parallel! :rotating_light:
This is really bad: What if we introduced a bug in our application, what would then be the purpose of our CI job here if the CD job is triggered nonetheless?

What we would really like to do is to set our **CD job as a dependent job**, so that if the CI job outcome is a green tick (assuming our tests pass), our CD job should be triggered to deploy our static website files into the S3 Bucket.
- Your task is to find out how to set the CD job as a job that depends on the CI one


## Test end-to-end flow

- Add a new test to test file, make sure it runs on GitHub Action
- Change the content of your static HTML files. Are these changes reflected on the live website after the SDLC for your app has finished?


## Bonus

At the moment, every time you push your changes to the main branch of your GitHub repository, the CI/CD workflow runs. However, this is not considered a best practice. Why?

Can you think of a better way to work with feature branches in your GitHub repository? The idea is that the CD job should only run once we're confident our recent changes can be merged against our main branch.


## After you're done with the project

Make sure you delete the content within the S3 Bucket and then delete the bucket, this will prevent costs from being generated in the future. It's really important to keep track of any resources that are added to your AWS account.
