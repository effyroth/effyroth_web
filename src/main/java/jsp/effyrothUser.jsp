<%@ page contentType="text/html;charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>cg-project</title>
        <link rel="stylesheet" href="/assets/css/import.css" type="text/css" />
        <script src="/assets/js/jquery-1.9.1.js" type="text/javascript"></script>
        <script type="text/javascript">
           var item = "effyrothUser";
        </script>
        <script src="/assets/js/cg-form.js" type="text/javascript"></script>
    </head>
    <body>
        <section class="form-section">
            <h4 class="new-update-title" >New/Update</h4>
			<form class="cg-form form-horizontal" action="create" data-update="update" data-delete="delete">
			  <input type="hidden" value="" id="update-id" name="id"/>
				<div class="control-group">
					<label class="control-label" for="username">username</label>
					<div class="controls">
						<input type="text" id="username" name="username"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="password">password</label>
					<div class="controls">
						<input type="text" id="password" name="password"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="ctime">ctime</label>
					<div class="controls">
						<input type="text" id="ctime" name="ctime"/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="utime">utime</label>
					<div class="controls">
						<input type="text" id="utime" name="utime"/>
					</div>
				</div>

			  <div class="control-group">
			    <div class="controls">
			    	<a href="#" class="btn save-btn">Save</a>
                    <a href="#" class="btn cancel-btn">Cancel</a>
               </div>
			   </div>
			</form>
       
        </section>

        <div class="announce-area">
            <table class="cg-table table table-striped" >
                <thead>
                    <tr>
					<th>username</th>
					<th>password</th>
					<th>ctime</th>
					<th>utime</th>

                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="item">
					<tr>
				        <td  class="item-id">${item.id}</td>
						<td class="username">${item.username}</td>
						<td class="password">${item.password}</td>
						<td class="ctime">${item.ctime}</td>
						<td class="utime">${item.utime}</td>

				        <td>
				            <ul class="actions">
				                <li><a class="modify" href="#">Modify</a></li>
				                <li><a class="delete" href="#">Delete</a></li>
				            </ul>
				        </td>
				    </tr>
                </c:forEach>    
                </tbody>
            </table>
        </div>
    </body>
</html>