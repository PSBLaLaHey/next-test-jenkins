FROM jenkins/jenkins:lts

USER root
RUN apt-get update && \
    apt-get install -y docker.io && \
    apt-get clean

# เพิ่มผู้ใช้ jenkins เข้าไปในกลุ่ม docker
RUN usermod -aG docker jenkins

# เปลี่ยนกลับไปที่ผู้ใช้ jenkins
USER jenkins
