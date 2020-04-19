package com.x8game.fire;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import com.x8game.fire.gms.config.AppConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.web.bind.annotation.RestController;


/**
 * @author Kevin Yang (mailto:kevin.yang@bstek.com)
 * @since 2016年12月10日
 */

@SpringBootApplication
@EnableCaching
@RestController
public class SampleApplication {

	private DataSource dataSource;

	@Autowired
	private AppConfig appConfig;

	public static void main(String[] args) throws Exception {
		SpringApplication.run(SampleApplication.class, args);
	}

	@Bean
	public LocalSessionFactoryBean localSessionFactoryBean() {
		LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
		dataSource = DataSourceBuilder.create(SampleApplication.class.getClassLoader())
				.driverClassName(appConfig.getDriveName())
				.url(appConfig.getUrl())
				.username(appConfig.getUsername())
				.password(appConfig.getPassword()).build();
		localSessionFactoryBean.setDataSource(dataSource);
		localSessionFactoryBean.setPackagesToScan("com.bstek.uflo.model*");
		Properties properties = new Properties();
		properties.put("hibernate.dialect", "org.hibernate.dialect.MySQL5Dialect");
		properties.put("hibernate.hbm2ddl.auto", "update");
		localSessionFactoryBean.setHibernateProperties(properties);
		return localSessionFactoryBean;
	}

	@Bean
	public PlatformTransactionManager platformTransactionManager(EntityManagerFactory factory) {
		return new JpaTransactionManager(factory);
	}

}
