FROM centos

RUN yum install wget -y

RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

RUN yum install java -y

RUN yum install jenkins -y

RUN yum install git -y

RUN yum install sudo -y

RUN echo -e "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

CMD java -jar /usr/lib/jenkins/jenkins.war

EXPOSE 8080

