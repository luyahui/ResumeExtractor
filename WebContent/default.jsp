<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Students</title>
<!-- basic styles -->

<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

<!-- page specific plugin styles -->

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

	<div class="main-container" id="main-container">
		<div class="main-container-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<div class="row">
							<div class="col-xs-12">
								&nbsp;&nbsp;
								<s:form action="upload" method="post"
									enctype="multipart/form-data">
									<s:file name="uploadfile" label="Resume"></s:file>
									<s:submit value="import"></s:submit>
								</s:form>
								&nbsp;&nbsp;
								<div class="table-header">Students table</div>
								<div class="table-responsive">

									<table id="sample-table-1"
										class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>Name</th>
												<th>Phone</th>
												<th>Email</th>
												<th>Major</th>
												<th>Notes</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<s:iterator var="st" value="%{#attr.students}">
												<tr>
													<td><s:property value="%{#st.name}" /></td>
													<td><s:property value="%{#st.phone}" /></td>
													<td><s:property value="%{#st.email}" /></td>
													<td><s:property value="%{#st.major}" /></td>
													<td><s:property value="%{#st.notes}" /></td>
													<td>
														<div
															class="visible-md visible-lg hidden-sm hidden-xs btn-group">
															<a class="btn btn-xs btn-info"
																href="viewDetail?student.id=<s:property value="%{#st.id}"/>"><i
																class="icon-edit bigger-120"></i></a> <a
																class="btn btn-xs btn-danger"
																href="delete?student.id=<s:property value="%{#st.id}"/>"><i
																class="icon-trash bigger-120"></i></a>
														</div>
													</td>
												</tr>
											</s:iterator>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>