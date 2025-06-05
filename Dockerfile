FROM eclipse-temurin:11-jre-alpine AS final
WORKDIR /app
COPY HelloWorld.java .
RUN apk add --no-cache openjdk11-jdk && \
    javac HelloWorld.java && \
    apk del openjdk11-jdk
CMD ["java", "HelloWorld"] 