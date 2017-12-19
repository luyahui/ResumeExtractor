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
								<div class="table-header">
									<s:if test="keyword==null || keyword==''">Students table</s:if>
									<s:else>Results for "<s:property value="keyword" />"</s:else>
								</div>
								<div class="nav-search" id="nav-search">
									<form class="form-search" action="index" method="get">
										<span class="input-icon"> <input type="text"
											name="keyword" placeholder="Search ..."
											class="nav-search-input" id="nav-search-input"
											autocomplete="off"> <i
											class="icon-search nav-search-icon"></i>
										</span>
										<div class="space-4"></div>
										<span class="col-md-offset-3 col-md-9"> <input
											type="submit" value="Search" class="btn btn-info" />
										</span>
									</form>
								</div>
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
									<div class="row">
										<div class="col-sm-6">
											<div class="dataTables_paginate paging_bootstrap">
												<ul class="pagination">
													<li class="prev"><s:if
															test="keyword==null || keyword==''">
															<a
																href="index?page.pageNo=<s:property value="%{#attr.page.pageNo-1}"/>"><i
																class="icon-double-angle-left"></i></a>
														</s:if>
														<s:else><a
																href="index?keyword=<s:property value="keyword"/>&page.pageNo=<s:property value="%{#attr.page.pageNo-1}"/>"><i
																class="icon-double-angle-left"></i></a></s:else></li>
													<li><span>Showing <s:property
																value="%{#attr.page.pageNo}" />/<s:property
																value="%{#attr.page.pageCount}" /> page
													</span> <input type="hidden" id="pageNo"
														value=<s:property value="%{#attr.page.pageNo}"/> /> <input
														type="hidden" id="pageCount"
														value=<s:property value="%{#attr.page.pageCount}"/> /></li>
													<li class="next"><s:if
															test="keyword==null || keyword==''">
															<a
																href="index?page.pageNo=<s:property value="%{#attr.page.pageNo+1}"/>"><i
																class="icon-double-angle-right"></i></a>
														</s:if>
														<s:else><a
																href="index?keyword=<s:property value="keyword"/>&page.pageNo=<s:property value="%{#attr.page.pageNo+1}"/>"><i
																class="icon-double-angle-right"></i></a></s:else></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		window.onload = function() {
			pageNo = document.getElementById('pageNo').value;
			pageCount = document.getElementById('pageCount').value;
			if (pageNo === '1') {
				document.getElementsByClassName('prev')[0].className += ' disabled';
				document.getElementsByClassName('prev')[0].getElementsByTagName('a')[0].href = 'javascript:void(0);';
			}
			if (pageNo === pageCount) {
				document.getElementsByClassName('next')[0].className += ' disabled';
				document.getElementsByClassName('next')[0].getElementsByTagName('a')[0].href = 'javascript:void(0);';
			}
		}
	</script>
</body>
</html>