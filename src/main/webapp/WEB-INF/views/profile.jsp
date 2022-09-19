<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
 <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="<c:url value='/template/css/bootstrap.min.css' />"/>
	    <!----css3---->
        <link rel="stylesheet" href="<c:url value='/template/css/admin.css' />"/>
		<!--google fonts -->	
	    <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">	
	<!--google material icon-->
      <link href="https://fonts.googleapis.com/css2?family=Material+Icons"rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body align="center">

	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="/template/css/user.css">
<!------ Include the above in your HEAD tag ---------->

<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="/template/img/1.png" alt="Image not available"/>
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        ${employee.getEname() }
                                    </h5>
                                    
                                   
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                              
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                      <% String username= (String)session.getAttribute("username"); %>
                    <div class="page-title">Hello <%=username %> </div>
                    <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                        <a onclick="getIdForUpdate(${employee.getEno()})" href="#editEmployeeModal" class="edit" data-toggle="modal">Edit Profile
                        </a><br/>
                         <a href="/"><span class="material-icons">logout</span>Logout</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>WORK LINK</p>
                            <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${employee.getEno() }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${employee.getEname() }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${employee.getEmail() }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${employee.getPhone() }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Address</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${employee.getAddress()}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Profession</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${employee.getDept()}</p>
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>230</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 months</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
        
        <div id="editEmployeeModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">	
      <form action="" method="post">
        <div class="modal-header">
          <h4 class="modal-title">Edit Employee</h4>
          <button type="button" class="close" data-dismiss="modal" 
		  aria-hidden="true">&times;</button>
        </div>
        
        <div class="modal-body">
	          <div class="form-group">
	            <label>Id</label>
	            <input type="text" class="form-control" name="eno" disabled="disabled">
	          </div>
	        
	          <div class="form-group">
	            <label>Name</label>
	            <input type="text" class="form-control" maxlength=""  name="ename" required>
	          </div>
	          
	          <div class="form-group">
	            <label>Email</label>
	            <input type="email" class="form-control" name="email" required>
	          </div>
	          
	          <div class="form-group">
	            <label>Address</label>
	            <textarea class="form-control" name="address" required></textarea>
	          </div>
	          
	          <div class="form-group">
	            <label>Phone</label>
	            <input type="text" class="form-control" value=${employee.getPhone() } name="phone" required>
	          </div>
	          
	          <div class="form-group">
	            <label>Department</label>
	            <input type="text"  class="form-control" value=${employee.getDept() } name="dept" required>
	          </div>
        </div>
        
        
        
        <div class="modal-footer">
          <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
          <input type="submit" class="btn btn-info" value="Save">
        </div>
      </form>
    </div>
  </div>
</div>
    <script src="<c:url value='/template/js/jquery-3.3.1.slim.min.js'/>"></script>
    <script src="<c:url value='/template/js/popper.min.js'/>"></script>
    <script src="<c:url value='/template/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/template/js/jquery-3.3.1.min.js'/>"></script>
    <script>
    function getIdForUpdate(id){
  	  var p = document.getElementById("editEmployeeModal");
  	  $.get("/search?search="+id,
  			     function(data,error){
  			      for(let i=0;i<data.length;i++){
  			    	  p.children[0].children[0].children[0].children[1].children[0].children[1].value = id;
  			    	  p.children[0].children[0].children[0].children[1].children[1].children[1].value = data[i].ename;
  			    	  p.children[0].children[0].children[0].children[1].children[2].children[1].value = data[i].email;
  			    	  p.children[0].children[0].children[0].children[1].children[3].children[1].value = data[i].address;
  			    	  p.children[0].children[0].children[0].children[1].children[4].children[1].value = data[i].phone;
  			    	  p.children[0].children[0].children[0].children[1].children[5].children[1].value = data[i].dept;
  			    	  p.children[0].children[0].children[0].action = "updateEmp/"+id;
  			      }
  			
  			      console.log(data);
  			   });
    }
    </script>
</body>
</html>