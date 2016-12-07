FROM java:8
COPY src /home/root/javahelloworld/src 
WORKDIR /home/root/javahelloworld/
run mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y wget vim
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
