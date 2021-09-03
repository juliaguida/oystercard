# DevOps

This short course is meant to provide you with a lightweight introduction to DevOps. We will learn what DevOps is, where it fits in current workflows and also get hands-on and tackle our first [Cloud](https://aws.amazon.com/what-is-cloud-computing/) project focusing on some DevOps practices using a designated Cloud provider.

At the end of it, you will be equipped with enough context to keep moving forward in your DevOps journey! :crystal_ball:

Are you ready? Keep reading!


## Learning objectives

By the end of this course, the goal is to be able to answer "yes" to these questions:

* **Can you explain what DevOps is about and where it fits in the SDLC (Software Development Life Cycle)?**
* **Can you explain some advantages of applying DevOps practices?**
* **Can you explain what the Cloud is?**
* **Can you create a CI/CD pipeline using GitHub Actions?**
* **Can you deploy a static site to an S3 bucket on AWS (Amazon Web Services) using a pipeline to automate the process?**


### What's DevOps?

Before we dive into trying to define DevOps, it's worth knowing some relevant history:

In 2007-2008, the devs and IT operators communities realised their teams basically did not work together and did not communicate efficiently either, which resulted in many unhappy customers.

DevOps then was born as an effort to close the gaps between the different teams.

![DevOps](assets/devops-diagram.jpeg?raw=true "DevOps Diagram from Stack Overflow")
Source: [Stack Overflow](https://stackoverflow.com/tags/devops/info)

As defined in Stack Overflow, DevOps acknowledges the interdependence of software development, quality assurance, and IT operations, and aims to help an organisation rapidly produce software products and services and to improve operations performance.

DevOps is a philosophy, a culture that can be adopted in a team!


### Where DevOps fits in the SDLC

![SDLC](assets/sdlc.jpg?raw=true "Software Development Life Cycle Diagram")

Note that the SDLC can take from hours to months depending on specific context.

1. **Planning**: We gather the requirements from the client, and then a set of possible solutions is proposed
2. **Analysis**: This is where we deep dive into the requirements
3. **Design**: Solutions are designed and shown to the client
4. **Development**: This is the stage where the actual solution is programmed
5. **Testing**: QA engineers search for bugs and make sure all required features are included. It is common practice to have some sort of staging environment where the changes are deployed to before going to production.
6. **Deployment**: Once the team is confident the requirements and successfully included, the software then is released to production. Based on production feedback, the cycle starts again.

We can consider the SDLC as the **What**, whereas DevOps is one of the parts that defines the **How**


### Benefits from adopting DevOps practices

There are multiple benefits that are brought to a team after adopting DevOps practices:
- **Speed**: Teams are able to release updates and add new features faster
- **Delivery**: Deployments happen more often
- **Reliability**: One noticeable addition are automated tests. These run before deployments happen and this way we increase the likelihood of things not going the wrong way before it's too late
- **Scale**: The key is being able to scale the different pieces that form our program up and down as required (e.g. in response to traffic loads)
- **Collaboration**: This is a huge one. Teams work together in a more efficient way thanks to practices like combining workflows or sharing ownership of tasks as convenient
- **Security**: More and more, security places a key part in DevOps. When everyone is an active part of the SDLC, it is easier to stay compliant even at scale. Automated security is starting to be more and more relevant, something that can be obvious if we think the whole SDLC may take just one hour!


### Your first Cloud project!?

Let's get hands-on and put some DevOps practices into action, we'll be looking at:
- [CI/CD](https://opensource.com/article/18/8/what-cicd) as a key DevOps practice with a huge focus on speed, automation and reliability, among others.
- [Amazon S3](https://aws.amazon.com/s3/) as the AWS resource that will host our live static website

Get started by visiting the following [doc](hello_cloud_world.md).


### What's Next?

This short course was just a gentle introduction to the world of DevOps and some common practices. There are many more things to learn! Some things you can explore are:


#### Modern Architectures: Containers and Serverless

As part of this project, we worked with a static website consisting of merely two HTML files, and with some tests running on a workflow that are not testing anything really as part of our application. 

This has been intentional in order to illustrate some fundamental DevOps concepts in this introductory course.

However, bear in mind that this won't be the case in a real world scenario. The more experience we gain, the more we will be involved in the process of making decisions regarding the architecture of different applications.

One popular discussion these days in the world of DevOps is whether we should aim for [containerising](https://www.docker.com/resources/what-container) our services or build a [serverless solution](https://www.excellentwebworld.com/serverless-architecture/) instead.

There are [pros and cons to both](https://www.serverless.com/blog/serverless-faas-vs-containers), so if you're curious, do some research and draw your own conclusions!
- If you have a pet project in mind you'd like to build, which approach do you think makes more sense for it? Maybe both and it's just a matter of preference?


#### IaC (Infrastructure as Code)

For this short course, you created your infrastructure (your S3 Bucket) using the AWS Console. However, this way of doing things does not go along very well with the spirit of DevOps.

An alternative could be to install the AWS CLI locally and create the resource(s) through your terminal. However, did you know that you could code your infrastructure as well? A very popular tool to do this is [Terraform](https://www.terraform.io/).

It'd be a great exercise to create another S3 Bucket using the CLI and then another one using Terraform. Then, compare the outcome after using these three techniques.


#### DevOps Alumni Community

Finally, did you know that there's a `_devops` channel in the Makers Alumni Slack? Why don't you also introduce yourself there? There are a few reasons why you may consider being part of it:
- You may want to explore the DevOps world more in depth together with other fellow mates
- You may want to share what you're working on with others and inspire them
- You may want to give and receive advice on your DevOps quests

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=devops/README.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=devops/README.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=devops/README.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=devops/README.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=devops/README.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
