package home.karparoni.web

class Photo  implements  Comparable {

	byte[] photo
	String caption
	
	static belongsTo = [album:Album]
	
	static mapping = {
		photo(sqlType: 'longblob')
		}
	
	static constraints = {
		photo(nullable: false)
		caption(nullable: false, blank: false)
		}
	
	String toString() { return "${caption}" }
	
	int compareTo(obj) {
		obj.id.compareTo(id)
	}
	
	
}