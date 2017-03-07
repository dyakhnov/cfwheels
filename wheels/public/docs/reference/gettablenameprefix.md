```coldfusion
getTableNamePrefix()
```
```coldfusion
// Get the table name prefix for this user when running a custom query
<cffunction name="getDisabledUsers" returntype="query">
    var loc = {}>
    <cfquery datasource="#get('dataSourceName')#" name="loc.disabledUsers">
        SELECT
            *
        FROM
            #this.getTableNamePrefix()#users
        WHERE
            disabled = 1
    </cfquery>
    <cfreturn loc.disabledUsers>
</cffunction>
```