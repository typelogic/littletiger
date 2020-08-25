# Spring Boot + Postgres REST API

Crystal clear, per git commit, step by step diff to build a small REST API application
that uses a Postgres database.

Please install the sdkman cli utility. I already have Java 1.8.0_265 in my Ubuntu 20.04.

Initial steps:

- sdk install springboot
- sdk install maven
- spring init --dependencies=web littletiger
- cd littletiger
- vi pom.xml # I had to edit 11 to 8 because I have Java 8
- mvn spring-boot:run

After the above steps, you now have a listening but empty REST endpoint at localhost:8080.

Each git commit diff is a clean step by step changes, as I work through adding the REST 
endpoints. An alternative to `mvn spring-boot:run` would be to generate a `jar` and run that
jar:

- mvn install
- java -jar target/littletiger-0.0.1-SNAPSHOT.jar

Note, as a side-effect the `install` will also write into your `~/.m2/repository/` folder.

Minor difficulties encountered:

- Initial head scratching, but later found I had to edit `pom.xml` to fit my java 8
- Initial head scratching when using postman as I missed to set the `javascript` option
- The `@NotBlank` annotation required me to add the `spring-boot-starter-validation` dependency in `pom.xml` since as version 2.3.0.RELEASE the validation starter is no longer included in `web/webflux` starters by default.
- I missed the double underscore in `V1__PersonTable.sql` 
- In `IntelliJ IDE` I had to figure out how to run the generated app by adding the `spring-boot:run` in the `Command line:` edit box

In conclusion, the IDE's only helped was on the statement auto-completion. Basically, everything can be done in vim and I'm stating this 
because some Java projects out there only works on their respective IDE. 
