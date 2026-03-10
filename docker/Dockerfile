############################################
# Stage 1 — Build the Application
############################################

FROM maven:3.9.9-eclipse-temurin-17 AS builder

# Create working directory
WORKDIR /app

# Copy pom first for dependency caching
COPY pom.xml .

# Download dependencies (improves rebuild speed)
RUN mvn -B -q -e -DskipTests dependency:go-offline

# Copy source code
COPY src ./src

# Build Spring Boot JAR
RUN mvn clean package -DskipTests


############################################
# Stage 2 — Runtime Image
############################################

FROM eclipse-temurin:17-jre-jammy

# Create non-root user (security best practice)
RUN useradd -ms /bin/bash spring

WORKDIR /app

# Copy only the final JAR from builder
COPY --from=builder /app/target/devops-portfolio-1.0.jar app.jar

# Change ownership
RUN chown spring:spring app.jar

USER spring

# Expose Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","/app/app.jar"]
