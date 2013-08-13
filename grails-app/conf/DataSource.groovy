dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
	//logSql = true
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
	
	
	production {
		// DEMO JNDI DATA SOURCE
		dataSource {
			dialect = 'org.hibernate.dialect.MySQL5InnoDBDialect'
			pooled = false

			dbCreate = 'update' // WARNING! on production, should probably be 'update' or 'validate'
			jndiName = 'java:comp/env/jdbc/mydb'
		}
	}
	
	/*
	production {
		dataSource {
			dbCreate = "update"
			dialect= org.hibernate.dialect.MySQLInnoDBDialect
			url = "jdbc:cloudbees://oritgallery?useUnicode=true&characterEncoding=utf8"
			username = 'oritdor'
			password = "0547597800"
			pooled = true
			properties {
			   maxActive = -1
			   minEvictableIdleTimeMillis=1800000
			   timeBetweenEvictionRunsMillis=1800000
			   numTestsPerEvictionRun=3
			   testOnBorrow=true
			   testWhileIdle=true
			   testOnReturn=true
			   validationQuery="SELECT 1"
			}
		}	
	}
	
	*/

	bees {
		dataSource {
		 dbCreate = "update"
		 username = "oritdor"
		 password = "0547597800"
		 url = "jdbc:cloudbees://oritdor_db"
		 pooled = true
		 properties {
			maxActive = -1
			minEvictableIdleTimeMillis=1800000
			timeBetweenEvictionRunsMillis=1800000
			numTestsPerEvictionRun=3
			testOnBorrow=true
			testWhileIdle=true
			testOnReturn=true
			validationQuery="SELECT 1"
		 }
		}
	   }
	
	
	/*
	production {
		dataSource {
			dialect= org.hibernate.dialect.MySQLInnoDBDialect
			driverClassName = "com.mysql.jdbc.Driver"
			username = "n/a"
			password = "n/a"
			url = "n/a"
			dbCreate = "update"
		}
	}
	*/
	
/*    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }*/
}
