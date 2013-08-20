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
	

}
