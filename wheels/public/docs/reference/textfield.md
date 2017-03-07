```coldfusion
// Provide a `label` and the required `objectName` and `property` 
<cfoutput>
    #textField(label="First Name", objectName="user", property="firstName")#
</cfoutput>

// Display fields for phone numbers provided by the `phoneNumbers` association and nested properties 
<fieldset>
	<legend>Phone Numbers</legend>
	<cfloop from="1" to="##ArrayLen(contact.phoneNumbers)##" index="i">
		#textField(label="Phone ####i##", objectName="contact", association="phoneNumbers", position=i, property="phoneNumber")#
	</cfloop>
</fieldset>
```