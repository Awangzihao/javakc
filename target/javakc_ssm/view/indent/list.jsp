<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>测试展示列表页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>

	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="" method="get">

				<div class="col-sm-12" id="hhhh111">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">铅封收货</div>
					<div class="col-sm-11"></div>
<%--					<div class="col-sm-8">--%>
<%--						<input class="form-control" id="search" name="testName" value="${testEntity.testName }" type="text" placeholder="查询内容 回车搜索"/>--%>
<%--					</div>--%>
	                <div class="col-sm-1">
	                	<div class="btn-group hidden-xs text-right" role="group">
<%--                			<button type="button" class="btn btn-primary" data-toggle="modal" id="update1111" name="order/view.do">--%>
<%--	                            <i class="glyphicon" aria-hidden="true"></i>查看--%>
<%--	                        </button>--%>
<%--	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="order/view2.do">--%>
<%--	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改--%>
<%--	                        </button>--%>
<%--	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="apply/delete.do">--%>
<%--	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>作废--%>
<%--	                        </button>--%>
							<button type="button" class="btn btn-primary" data-toggle="modal" id="update22" name="order/updateState.do">
								<i class="glyphicon text-right" aria-hidden="true"></i>收货
							</button>
		                 </div>
	                </div>

	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>订单批次号</th>
					                <th>生产厂家名称</th>
					                <th>订单日期</th>
					                <th>订单数量</th>

					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.order_id}"/></td>
						                <td>${e.order_id}</td>
						                <td>${e.order_name }</td>
										<td><fmt:formatDate value="${e.order_date }" pattern="yyyy-MM-dd"/></td>
						                <td>${e.order_count }</td>
						            </tr>
					            </c:forEach>
					        </tbody>
					    </table>
				    <div class="page col-sm-8" >${page}</div>
			     </div>
			     </form>
			</div>
		</div>
	</body>
	<script type="text/javascript">
	$('#update1111').click(function()
	{
		var ids =$(this).val();
	if($.selectedCount2())
	{
		var url = root+$(this).attr('name');
		$("#searchForm").attr('action', url).submit();
	}
	});
	$.extend({'selectedCount2':function(){
	var selected = $('input[name=ids]:checked').length;

	if(selected !=1)
	{
	swal({title:"温馨提示",text:"查看信息时,只能选择一条信息"});
	} else {

	return true;
	}

	}});
	$('#update22').click(function()
	{
		if($.selectedCount3('update'))
		{
			var url = root+$(this).attr('name');
			$("#searchForm").attr('action', url).submit();
		}
	});
	$.extend({'selectedCount3':function(){
			var selected = $('input[name=ids]:checked').length;

			if(selected == 0)
			{
				swal({title:"温馨提示",text:"生成订单时,最少要选择一条信息"});
				return false;
			} else {

				return true;
			}
		}});
	</script>
</html>