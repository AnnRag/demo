package com.shop.demo.config;

import org.junit.Rule;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.test.util.TestPropertyValues;
import org.springframework.context.ApplicationContextInitializer;
import org.springframework.context.ConfigurableApplicationContext;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.utility.MountableFile;

@ConfigurationProperties(prefix = "project.datasource")
public class Initializer implements ApplicationContextInitializer<ConfigurableApplicationContext> {

    private String database;
    private String user;
    private String password;

    @Rule
    public PostgreSQLContainer postgres = new PostgreSQLContainer()
            .withDatabaseName(database)
            .withPassword(password)
            .withUsername(user)
            .withCopyFileToContainer(MountableFile.forClasspathResource());

    @Override
    public void initialize(ConfigurableApplicationContext applicationContext) {
        TestPropertyValues.of(
                "spring.datasource.driver-class-name=" + postgres.getDriverClassName(),
                "spring.datasource.url=" + postgres.getJdbcUrl(),
                "spring.datasource.username=" + postgres.getUsername(),
                "spring.datasource.password=" + postgres.getPassword()
        ).applyTo(applicationContext.getEnvironment());
    }
}
