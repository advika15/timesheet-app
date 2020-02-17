<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div>


	<div class="panel panel-primary">
					<div class="panel-heading">
						You can fill timesheet upto last 2 months:
					</div>
					<div>
						<table>
						  	
						    	<tr>
						      		<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#</th>
						      		<c:forEach var = "count" begin = "1" end = "30">
								    
								    <th><c:out value="${count}"/></th> 
									</c:forEach>						      		
						    	</tr>
						  	
						  	<tbody>
						    	<tr>
							      	<th scope="row">Attended</th>
							      	<c:forEach var = "count" begin = "1" end = "30">
						    		<th><input type="text" id="${count}" maxlength="2" size="2"></th> 
									</c:forEach>
						    	</tr>
						    	<tr>
							      	<th scope="row">Leave</th>
							      	<c:forEach var = "count" begin = "1" end = "30">
						    		<th><input type="text" id="${count}" size="2"></th> 
									</c:forEach>
						    	</tr>
						    	
						  	</tbody>
						</table>
					</div>
				</div>
				<input type="text" id="numberOfDays" value="0">
				<input type="text" id="weekDay" value="0">
				<input type="text" id="days" value="0">
				

</div>
<%@ include file="common/footer.jspf"%>
<script type="text/javascript">
function codeAddress() {
	var       today = new Date()
	, lastOfMonth = new Date( today.getFullYear(), today.getMonth()+1, 0 )
	,   weekDay = lastOfMonth.getDay()
	,	totalDays = lastOfMonth.getDate();
	var days=["SUN", "MON","TUE","WED","THU","FRI","SAT"];
	document.getElementById("weekDay").value=weekDay;
	document.getElementById("numberOfDays").value=totalDays;
	document.getElementById("days").value=days;
	return totalDays;
}
window.onload = codeAddress;
</script>
			