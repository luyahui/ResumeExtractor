<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student</title>
<!-- basic styles -->

<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

<!-- page specific plugin styles -->

<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
<link rel="stylesheet" href="assets/css/chosen.css" />
<link rel="stylesheet" href="assets/css/datepicker.css" />
<link rel="stylesheet" href="assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="assets/css/daterangepicker.css" />
<link rel="stylesheet" href="assets/css/colorpicker.css" />

<!-- fonts -->

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

<!-- ace styles -->

<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />

<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->

<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<div class="navbar navbar-default" id="navbar">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="index" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> Homepage
				</small>
				</a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->
		</div>
		<!-- /.navibar-container -->
	</div>
	<div class="page-content">
		<div class="page-header">
			<h1>Profile</h1>
			<h4>
				<a href="<s:property
						value="%{#attr.student.filepath}" />"
					target="_blank">View original file </a>
			</h4>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<form action="update" method="post" class="form-horizontal">
					<input type="hidden" name="student.id"
						value="<s:property value="%{#attr.student.id}"/>" />
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="form-field-1"> Name </label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" class="col-xs-10 col-sm-5"
								name="student.name"
								value="<s:property value="%{#attr.student.name}"/>">
						</div>
					</div>
					<div class="space-4"></div>

					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="form-field-1"> Phone </label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" class="col-xs-10 col-sm-5"
								name="student.phone"
								value="<s:property value="%{#attr.student.phone}"/>">
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="form-field-1"> Email </label>
						<div class="col-sm-9">
							<input type="text" id="form-field-1" class="col-xs-10 col-sm-5"
								name="student.email"
								value="<s:property value="%{#attr.student.email}"/>">
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="form-field-1"> Education </label>
						<div class="col-sm-9">
							<textarea class="form-control" id="form-field-8"
								name="student.education"
								style="margin: 0px 13.9844px 0px 0px; width: 295px; height: 45px;"><s:property
									value="%{#attr.student.education}" /></textarea>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="form-field-1"> Major </label>
						<div class="col-sm-9">
							<textarea class="form-control" id="form-field-8"
								name="student.major"
								style="margin: 0px 13.9844px 0px 0px; width: 295px; height: 45px;"><s:property
									value="%{#attr.student.major}" /></textarea>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="form-field-1"> Notes </label>
						<div class="col-sm-9">
							<textarea class="form-control" id="form-field-8"
								name="student.notes"
								style="margin: 0px 13.9844px 0px 0px; width: 295px; height: 45px;"><s:property
									value="%{#attr.student.notes}" /></textarea>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="clearfix form-actions">
						<div class="col-md-offset-3 col-md-9">
							<input type="submit" value="Update" class="btn btn-info" />
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>