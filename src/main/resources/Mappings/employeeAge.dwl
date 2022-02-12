%dw 2.0
output application/json
---
payload map 

{
/*MappingDelimiterStart*/
DB_FIRSTNAME : upper ((splitBy( $.NAME,' '))[0] ),
DB_LASTNAME : upper ((splitBy( $.NAME,' '))[1]  ),
DB_AGE : ($.AGE / 12) as String {format:"#"},
/*MappingDelimiterEnd*/
}
