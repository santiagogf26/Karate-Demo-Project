# Karate Demo

Project Base for https://petstore.swagger.io/: Automation of pet API's.

### Project Objective:

Develop an automated project that interacts with the pet API's of the https://petstore.swagger.io/ page and simulates pet workflow.

### Tools Used:

- **Programming Language:** Java

- **Automation Framework:** Karate DSL

### Automated Interactions:

1 - **Add new pet to the Store**:
- Automate the api workflow to add a new pet.
- Path: /pet.

2 - **Get pet by ID**:
- Automate the api workflow to get pet by ID.
- Endpoint: /pet/{petId}.

3- **Update and existing pet**:
- Automate the api workflow to update an existing pet.
- Endpoint: /pet.

4- **Get pets by Status**:
- Automate the api workflow to find pets by status.
- Endpoint: /pet/findByStatus.

### How to Execute the Project:

To run the project, follow the steps below:

1 - Open the command terminal.

2 - Navigate to the project directory.

3 - Execute the following command in the terminal:
```gradle
./gradlew test --tests "com.tests.karate.ParallelTests.testParallel"
```

4 - Press Enter to initiate tests execution.

### Report

The project has been configured to generate an execution report using Cucumber. The generated report is accessible at the following path: *target/cucumber-html-reports*.

