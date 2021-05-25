# Hello Cloud World!

For this project, we will be using AWS (Amazon Web Services), however, bear in mind that the concepts we are going to work with can be extrapolated quite easily from one Cloud provider to another!

This is a list of tasks we are going to go through:

## Create a GitHub repository

This repository will serve as the place where your [project files](https://github.com/makersacademy/course/tree/devops-jh/devops/files) will live and, also, the place where you will set up your GitHub Actions for the CI/CD pipeline.

## Create an AWS Account

For the sake of this project, we are going to use AWS as our designated Cloud provider. In order to work with AWS, you need to [create an account](https://aws.amazon.com/free/).

You will need to enter a debit/credit card for this. However, we are going to use only one AWS Service (S3) which is **free tier elegible for a year**, so it should not generate any costs under your account.

## Create an S3 Bucket on AWS

Now that your AWS Account is created, log into the AWS Console and search for **S3** under *Services*. Your task will be to create a bucket that will be the place where you will host your static website eventually.

## Create GitHub Actions Workflow on your repository

JUST RUN PYTHON TESTS, CI

## Create, set and run CI job

For our project, the idea is that this job is responsible for running the Python tests under [this file](https://github.com/makersacademy/course/tree/devops-jh/devops/sample_unit_tests).

If the test fails, your job will be to fix the failing tests by analysing the outcome on the GitHub Action flow.
If the tests succeed, this means we're ready to move on :sunglasses:

## Create, set and run CD job

The outcome of the previous step will determine whether this job will run or not on GitHub Actions. Assuming our tests pass, we should set our CD job to deploy our static website files into the S3 Bucket.

- Why these 2 files?

After these files are placed in our S3 Bucket. We need to find the URL to access our static website.
- Use the AWS Console to access your S3 Bucket and find that link.

After you've found the link. What happens when you try to access the URL on your browser?

S3 Buckets are private by default, which means they're not publicly accessible on the web.
- Can you find out how to make your bucket public instead so that you can access your website on the browser?

## Test end-to-end flow

- Add a new test to test file, make sure it runs on GitHub Action
- Change the content of your static HTML files. Are these changes reflected on the live website after the SDLC for your app has finished?

## Bonus

At the moment, every time you push your changes to the main branch of your GitHub repository, the CI/CD workflow runs. However, this is not considered a best practice. Why?

Can you think of a better way to work with feature branches in your GitHub repository? The idea is that the CD job should only run once we're confident our recent changes can be merged against our main branch.

## After you're done with the project

Make sure you delete the content within the S3 Bucket and then delete the bucket, this will prevent costs from being generated in the future. It's really important to keep track of any resources that are added to your AWS account.
