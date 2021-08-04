FROM adoptopenjdk/openjdk16:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=@Info_gosinfo_bot
ENV BOT_TOKEN=1002533773:AAGC_V4mJ5s8SHW3Px9AwHF-WEPVwDsSVg8
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}", "-jar", "/app.jar"]