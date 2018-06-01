<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="s" uri="/auth"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>营销任务列表</title>

<link rel="stylesheet" href="../../assets/css/fonts/linecons/css/linecons.css">
<link rel="stylesheet" href="../../assets/css/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../../assets/css/bootstrap.css">
<link rel="stylesheet" href="../../assets/css/xenon-core.css">
<link rel="stylesheet" href="../../assets/css/xenon-forms.css">
<link rel="stylesheet" href="../../assets/css/xenon-components.css">
<link rel="stylesheet" href="../../assets/css/xenon-skins.css">
<link rel="stylesheet" href="../../assets/css/custom.css">

<!-- Imported styles on this page -->
<link rel="stylesheet" href="../../assets/js/datatables/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="../../assets/js/select2/select2.css">
<link rel="stylesheet" href="../../assets/js/select2/select2-bootstrap.css">
<link rel="stylesheet" href="../../assets/js/multiselect/css/multi-select.css">
<link rel="stylesheet" href="../../css/app.css">

</head>

<body class="page-body">
  <div class="page-container">
    <div class="main-content">
      <div class="panel panel-default collapsed">
        <div class="panel-heading">
          <h3 class="panel-title">营销任务列表</h3>
          <div class="panel-options">
            <a href="#" data-toggle="panel"> <span class="collapse-icon">&ndash;</span> <span class="expand-icon">+</span>
            </a>
          </div>
        </div>
        <div class="panel-body">
          <h4 class="text-muted">过滤条件设置</h4>
          <div class="row">
            <form role="form" id="inputName" method="post" class="validate">
              <div class="col-md-3">
                <div class="form-group">
                  <label class="control-label">活动名称</label>
                  <input type="text" class="form-control" id="taskName1" name="taskName" placeholder="任务名称">
                </div>
              </div>
              <!-- <div class="col-md-3">
                <div class="form-group">
                  <label class="control-label">客户全称</label>
                  <input type="text" class="form-control" id="custName" name="custName" placeholder="客户全称">
                </div>
              </div> -->
            </form>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="form-group pull-right">
                <button type="button" class="btn btn-success" id="filter_button">
                  <i class="fa-search"></i> 查询
                </button>
                <button type="reset" class="btn btn-info" id="reset_button">
                  <i class="fa-refresh"></i> 重置
                </button>
              </div>
            </div>
          </div>
        </div>
        <div class="panel-body-">
          <div class="row">
            <div class="col-md-9">
              <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-secondary glyphicon glyphicon-plus" id="addbutton"> <input type="checkbox">新增</label>
                <label class="btn btn-blue glyphicon glyphicon-pencil" id="updbutton"> <input type="checkbox">修改</label>
                <label class="btn btn-blue glyphicon glyphicon-trash" id="delbutton"> <input type="checkbox">删除</label>
                <!-- <label class="btn btn-blue glyphicon glyphicon-save" id="download_button"> <input type="checkbox">导出</label> -->
              </div>
            </div>
            <div class="col-md-3">
              <li class="hiden-columns-title pull-right">
                <a href="#">
                  <span>隐藏列<i class="fa-angle-down"></i>
                  </span>
                </a>
                <ul class="hiden-columns">
                </ul>
              </li>
            </div>
          </div>
          <table class="table table-bordered table-striped table-condensed nowrap" id="listtable" style="width: 100%;">
            <thead>
              <tr>
               	<!-- <th>任务ID</th> -->
                <th>对象ID</th>
                <th>任务名称</th>
                <th>任务类型</th>
                <th>任务状态</th>
                <th>客户号</th>
                <th>客户名称</th>
                <th>客户经理</th>
                <th>开始日期</th>
                <th>结束日期</th>
                <th>奖金总额</th>
                <th>创建时间</th>
              </tr>
            </thead>
            <tbody class="middle-align">
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="unit_detail">
    <div class="modal-dialog" style="width: 60%">
        <div class="modal-content">
            <form method="post" class="validate" onsubmit="return submitDetail()">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                        	<input type="hidden" id = "taskId" name = "taskId">
                            <label for="objId" class="control-label">对象ID</label>
                            <input type="text" class="form-control" id="objId" name="objId" placeholder="请输入对象ID" 
                              data-validate="required" data-message-required="此项必须输入.">
                        </div>    
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="taskName" class="control-label">任务名称</label>
                            <input type="text" class="form-control" id="taskName" name="taskName" placeholder="请输入任务名称"
                                data-validate="required" data-message-required="此项必须输入.">
                        </div>    
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="taskType" class="control-label">任务类型</label>
                            <select class="form-control" id="taskType" name="taskType" data-validate="required" data-message-required="此项必须输入.">
                            </select>
                            <!-- <input type="text" class="form-control" id="taskType" name="taskType" placeholder="请输入任务类型"
                            	data-validate="required" data-message-required="此项必须输入."/> -->
                        </div>    
                    </div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="taskStatus" class="control-label">任务状态</label>
							<select class="form-control" id="taskStatus" name="taskStatus" data-validate="required" data-message-required="此项必须输入.">
                            </select>
							<!-- <input type="date" class="form-control" id="taskStatus" name="taskStatus" placeholder="请输入任务状态"
                            	data-validate="required" data-message-required="此项必须输入."/> -->
						</div>	
					</div>
                </div>
             <div class="row">
              	<div class="col-md-6">
                        <div class="form-group">
                            <label for="custNo" class="control-label">客户号</label>
                            <input type="text" class="form-control" id="custNo" name="custNo" placeholder="请输入客户号"
                            	data-validate="required" data-message-required="此项必须输入."/>
                        </div>    
                    </div>
                 <div class="col-md-6">
                     <div class="form-group">
                         <label for="custName" class="control-label">客户名称</label>
                         <input type="text" class="form-control" id="custName" name="custName" placeholder="请输入客户名称"
                            	data-validate="required" data-message-required="此项必须输入."/>
                     </div>    
                 </div>
             </div>
             <div class="row">
              	<div class="col-md-6">
                        <div class="form-group">
                            <label for="staffId" class="control-label">客户经理</label>
                            <input type="text" class="form-control" id="staffId" name="staffId" placeholder="请输入客户经理"/>
                        </div>    
                    </div>
                 <div class="col-md-6">
                     <div class="form-group">
                         <label for="startDate" class="control-label">开始日期</label>
                         <input type="date" class="form-control" id="startDate" name="startDate" placeholder="请输入开始日期"/>
                     </div>    
                 </div>
             </div>
             <div class="row">
              	<div class="col-md-6">
                        <div class="form-group">
                            <label for="endDate" class="control-label">结束日期</label>
                            <input type="date" class="form-control" id="endDate" name="endDate" placeholder="请输入结束日期"/>
                        </div>    
                    </div>
                 <div class="col-md-6">
                     <div class="form-group">
                         <label for="perfTotal" class="control-label">奖金总额</label>
                         <input type="text" class="form-control" id="perfTotal" name="perfTotal" placeholder="请输入奖金总额"/>
                     </div>    
                 </div>
             </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-success" >保存</button>
            </div>
            </form>
        </div>
    </div>
</div>
</body>

<script src="../../assets/js/jquery-1.11.1.min.js"></script>

<!-- Bottom Scripts -->
<script src="../../assets/js/bootstrap.min.js"></script>
<script src="../../assets/js/TweenMax.min.js"></script>
<script src="../../assets/js/resizeable.js"></script>
<script src="../../assets/js/joinable.js"></script>
<script src="../../assets/js/xenon-api.js"></script>
<script src="../../assets/js/xenon-toggles.js"></script>
<script src="../../assets/js/datatables/js/jquery.dataTables.min.js"></script>
<script src="../../assets/js/moment.min.js"></script>

<!-- Imported scripts on this page -->
<script src="../../assets/js/datatables/dataTables.bootstrap.js"></script>
<script src="../../assets/js/datatables/tabletools/dataTables.tableTools.min.js"></script>
<script src="../../assets/js/select2/select2.min.js"></script>
<script src="../../assets/js/jquery-ui/jquery-ui.min.js"></script>
<script src="../../assets/js/selectboxit/jquery.selectBoxIt.min.js"></script>
<script src="../../assets/js/jquery-validate/jquery.validate.min.js"></script>
<script src="../../assets/js/datepicker/bootstrap-datepicker.js"></script>

<!-- JavaScripts initializations and stuff -->
<script src="../../assets/js/xenon-custom.js"></script>
<script src="../../js/WebUtils.js"></script>

<jsp:include page="/WEB-INF/template/settings.jsp"></jsp:include>

<s:enums keys="task_Type,task_Status"></s:enums>
<script type="text/javascript">
    $(function() {
        //下拉框数据绑定
        WebUtils.bindSelect('taskType','task_Type',true);
        WebUtils.bindSelect('taskStatus','task_Status',true);
        
        //初始化列表
        var initparams = {
            "ajax" : {
                "url" : "mkttaskinfo/list",
                "type" : "POST",
                "data" : function(d) {
                    var orders = d.order;
                    for (var i = 0; i < orders.length; i++) {
                        d["norder[" + i + "][column]"] = d.columns[orders[i]["column"]].data;
                        d["norder[" + i + "][dir]"] = orders[i]["dir"];
                    }
                    var inputName = WebUtils.convertFormData("inputName");
                    for (var index in inputName) {
                        d[index] = inputName[index];
                    }
                }
            },
            "columns" : [
               /*  { "data" : "taskId", "sClass" : "text-center" },	 */	// 任务ID
                { "data" : "objId", "sClass" : "text-center" },			// 对象ID
                { "data" : "taskName", "sClass" : "text-center" },		// 任务名称
                { "data" : "taskType", "sClass" : "text-center" },		// 任务类型 1-营销活动 2-潜在客户 3-客户商机
                { "data" : "taskStatus", "sClass" : "text-center" },	// 任务状态 1-新增 2-已拜访 3-已记录 4-完成
                { "data" : "custNo", "sClass" : "text-center" },		// 客户号
                { "data" : "custName", "sClass" : "text-center" },		// 客户名称
                { "data" : "staffId", "sClass" : "text-center" },		// 客户经理
                { "data" : "startDate", "sClass" : "text-center" },		// 开始日期
                { "data" : "endDate", "sClass" : "text-center" },		// 结束日期
                { "data" : "perfTotal", "sClass" : "text-center" },		// 奖金总额
                { "data" : "createTime", "sClass" : "text-center" },	// 创建时间
            ],
            "columnDefs" : [{
                 "render" : function (data, type, row) {
                    return WebUtils.getCodeValue("task_Type", data);
                }, 
                "targets" : [2]
            },
            {
                "render" : function (data, type, row) {
                   return WebUtils.getCodeValue("task_Status", data);
               }, 
               "targets" : [3]
           }
            ]
        };
        var params = $.extend({}, WebUtils.settings, initparams);
        params.ordering = false;
        var table = $("#listtable").DataTable(params);
        WebUtils.initColumnHider(table);

        //过滤条件设置按钮
        $("#filter_button").click(function() {
            table.draw();
            $(".panel-default").addClass("collapsed");
        });
        //过滤条件重置按钮
        $("#reset_button").click(function() {
            $("#inputName input").val("");
            $("#inputName select").select2("val", []);
        });
		
        //删除
        $('#delbutton').click( function () {
            var data = table.rows('.selected').data();
            if (data) {
                var sdata = [];
                for (var x =0; x< data.length; x ++) {
                    sdata.push(data[x]);
                }
                var str =  JSON.stringify(sdata);
                WebUtils.ajaxSubmitJson('mkttaskinfo/delete',str,function(result){
                    $('#sysmsg .modal-body').text(result.msg);
                    $('#sysmsg').modal('show');
                    table.draw();
                });
            }
        } );
        
      //新增
        $('#addbutton').click( function () {
            jQuery('#unit_detail').modal('show', {backdrop: 'static',action: "mkttaskinfo/add",title:"新增营销任务"});
        });
        
        //修改
        $('#updbutton').click( function () {
            var data = table.rows('.selected').data();
            if (data.length == 1) {
                jQuery('#unit_detail').modal('show', {backdrop: 'static',action: "mkttaskinfo/update",title:"修改营销任务"});
            } else {
                WebUtils.alert("请选择一条记录");
            }
        });
        
        //明细对话框消失后刷新
        $('#unit_detail').on('hidden.bs.modal', function (event) {
            table.draw();
        });
        
        //明细对话框显示后处理
        $('#unit_detail').on('show.bs.modal', function (event) {
            //设置详细对话框内容
            var button = $(event.relatedTarget);
            var modal = $(this);
            modal.find('.modal-title').text(button.attr('title'));
            modal.find('form').attr("action", button.attr('action'));
            //清除原来的校验
            $('#unit_detail form').validate().resetForm();
            $('.form-group').removeClass('validate-has-error');
            
            if (button.attr('action') == 'mkttaskinfo/add') {
               // $('#unitId').removeAttr('readonly');
                $('#unit_detail form')[0].reset();
            } else {
                //$('#unitId').attr('readonly','true');
                var data = table.row('.selected').data();
                if (data) {
                	$('#taskId').val(data['taskId']);
                    $('#objId').val(data['objId']);
                    $('#taskName').val(data['taskName']);
                    $('#taskType').val(data['taskType']);
                    
                    $('#taskStatus').val(data['taskStatus']);
                    $('#custNo').val(data['custNo']);
                    $('#custName').val(data['custName']);
                    
                    $('#staffId').val(data['staffId']);
                    $('#startDate').val(data['startDate']);
                    $('#endDate').val(data['endDate']);
                    $('#perfTotal').val(data['perfTotal']);
                }
            }
        });
    });
    /////////////////////////
    function submitDetail() {
        var form = $('#unit_detail form');
        if (form.valid()) {
            var url = form.attr('action');
            var data = form.serialize();
            WebUtils.ajaxSubmit(url,data,function(result){
                $('#unit_detail').modal('hide');
            });
        }
        return false;
    }
</script>
</html>
