package home.karparoni.web

import java.util.Date;
import java.util.SortedSet;

class Album   implements  Comparable   {
	//User user
	String caption
	String description
	Date dateCreated = new Date()
	Date lastUpdated = new Date()
	
//	static belongsTo = User
	static hasMany = [photos:Photo]
	
    static constraints = {
		
      
		caption(size: 1..40, blank: false, validator:{val ->
			if(val?.find{ it =~ /^_/}  ) {
				return false
			}
		})
		
		description(blank: false)
    }
	
	String toString(){ return "${caption}" }
	
	SortedSet photos
		
	int compareTo(obj) {
		obj.id.compareTo(id)
	}
	
	
	static mapping = {
		photos cascade: 'delete'
		}

}
