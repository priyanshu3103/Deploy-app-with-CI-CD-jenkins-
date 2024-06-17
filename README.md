# Jenkins Setup
## Prerequisites:
Minimum hardware requirements:

- 256 MB of RAM
- 1 GB of drive space (although 10 GB is a recommended minimum if running Jenkins as a Docker container)
Software requirements:

- Java: see the [﻿Java Requirements](https://www.jenkins.io/doc/book/platform-information/support-policy-java/)  page
- Web browser: see the [﻿Web Browser Compatibility](https://www.jenkins.io/doc/administration/requirements/web-browsers/)  page
- For Windows operating system: [﻿Windows Support Policy](https://www.jenkins.io/doc/administration/requirements/windows/) 
- For Linux operating system: [﻿Linux Support Policy](https://www.jenkins.io/doc/book/platform-information/support-policy-linux/) 
- For servlet containers: [﻿Servlet Container Support Policy](https://www.jenkins.io/doc/book/platform-information/support-policy-servlet-containers/) 
## Installation:
 1. Install Docker for linux

```
﻿sudo apt-get update
sudo apt-get install docker.io
```
 2. Give the docker socket ownership to the current user

```
sudo chown $USER ///var/run/docker.sock
```
 3. Setup jenkins

-    Install openjdk for jenkins
```
sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version    
```
-     Install jenkins
```
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
```
 4. Start the jenkins service

```
sudo systemctl start jenkins.service 
```
 5. Check the service status

```
sudo systemctl status jenkins.service
```
  6. Access your jenkins with your local IP or AWS public IP with this PortBinding 8080:8080.



## Deploy app with CI/CD (jenkins):


** 1. Set Up Jenkins:**

- Install Jenkins on your server or use a cloud-based Jenkins service.
- Ensure Jenkins has access to your source code repository (e.g., GitHub, GitLab).
** 2. Create a Jenkinsfile:**

- A Jenkinsfile is a text file that contains the pipeline configuration. This file should be placed in the root directory of your source code repository.
** 3. Define the Pipeline Stages in Jenkinsfile:**

- **Checkout Code:** Pull the latest code from the source repository.
- **Build:** Compile the code and perform necessary build steps.
- **Test:** Run automated tests to ensure the code is functioning correctly.
- **Package:** Package the application, e.g., create a Docker image or a ZIP file.
- **Deploy:** Deploy the application to the target environment (e.g., staging, production).
- **Post-deployment Verification:** Optionally, run sanity checks or smoke tests to verify the deployment.
** 4. Configure Jenkins Job:**

- Create a new Jenkins pipeline job and link it to your repository where the Jenkinsfile is located.
- Configure any necessary credentials and environment variables required for the pipeline.
** 5. Set Up Webhooks:**

- Configure webhooks in your source code repository to trigger the Jenkins job automatically on code commits or pull requests.
** 6. Define Build Triggers:**

- In Jenkins, define build triggers to determine when the pipeline should run (e.g., on every commit, nightly builds).
** 7. Manage Pipeline Configuration:**

- Configure global tools and environment variables in Jenkins (e.g., JDK, Node.js, Docker).
** 8. Secure the Pipeline:**

- Ensure sensitive information like credentials and API keys are securely stored in Jenkins credentials management.
**Monitor and Maintain:**

- Monitor the pipeline execution and logs for any failures or issues.
- Regularly update the Jenkinsfile and pipeline configuration as your application evolves.
** 9. Integrate Notifications:**

- Configure notifications (e.g., email, Slack) to alert relevant teams about the build and deployment status.


