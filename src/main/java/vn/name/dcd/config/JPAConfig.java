package vn.name.dcd.config;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.cloudinary.Cloudinary;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = {"vn.name.dcd.repository"})
public class JPAConfig {
	
	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
		LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
		em.setDataSource(dataSource());
		em.setPersistenceUnitName("persistence-data");
		JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
		em.setJpaVendorAdapter(vendorAdapter);
		em.setJpaProperties(additionalProperties());
		return em;
	}
	@Bean
	JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(entityManagerFactory);
		return transactionManager;
	}
	@Bean
	public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
		return new PersistenceExceptionTranslationPostProcessor();
	}
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		dataSource.setUrl("jdbc:sqlserver://localhost:1433;databaseName=entity");
		dataSource.setUsername("sa");
		dataSource.setPassword("123");
		return dataSource;
	}
	Properties additionalProperties() {
		Properties properties = new Properties();
		/* properties.setProperty("hibernate.hbm2ddl.auto", "create-drop"); */
		//properties.setProperty("hibernate.hbm2ddl.auto", "update"); 
		 properties.setProperty("hibernate.hbm2ddl.auto", "none"); 
		 properties.setProperty("hibernate.enable_lazy_load_no_trans", "true");

		 
		return properties;
	}
	@Value("${cloudinary.cloud_name}")
	private String cloudName;
	@Value("${cloudinary.api_key}")
	private String apiKey;
	@Value("${cloudinary.api_secret}")
	private String apiSecret;
	@Bean
	public Cloudinary cloudinaryConfig()
	{
		Cloudinary cloudinary = null;
		Map config= new HashMap<>();
		config.put("CLOUDINARY_CLOUD_NAME", cloudName);
		config.put("CLOUDINARY_API_KEY", apiKey);
		config.put("CLOUDINARY_API_SECRET", apiSecret);
		cloudinary = new Cloudinary(config);
		return cloudinary;
		
	}
}
