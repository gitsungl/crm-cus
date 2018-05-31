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
                  <input type="text" class="form-control" id="actName1" name="actName" placeholder="活动名称">
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
               	<!-- <th>活动ID</th> -->
                <th>活动名称</th>
                <th>活动类型</th>
                <th>活动状态</th>
                <th>开始日期</th>
                <th>结束日期</th>
                <th>活动规模</th>
                <th>活动内容</th>
                <th>主办单位</th>
                <th>活动联系人</th>
                <th>活动联系电话</th>
                <th>活动地点</th>
                <th>创建人</th>
                <th>申创建时间</th>
                <!-- <th>创建机构</th> -->
                <th>最后修改人</th>
                <th>最后修改时间</th>
                <!-- <th>最后修改机构</th> -->
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
                            <label for="actName" class="control-label">活动名称</label>
                            <input type="hidden" id = "actId" name = "actId">
                            <input type="text" class="form-control" id="actName" name="actName" placeholder="请输入活动名称" 
                              data-validate="required" data-message-required="此项必须输入.">
                        </div>    
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="actType" class="control-label">活动类型</label>
                            <input type="text" class="form-control" id="actType" name="actType" placeholder="请输入活动类型"
                                data-validate="required" data-message-required="此项必须输入.">
                        </div>    
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="startDate" class="control-label">开始日期</label>
                            <input type="date" class="form-control" id="startDate" name="startDate" placeholder="请输入开始日期"
                            	data-validate="required" data-message-required="此项必须输入."/>
                        </div>    
                    </div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="endDate" class="control-label">结束日期</label>
							<input type="date" class="form-control" id="endDate" name="endDate" placeholder="请输入結束日期"
                            	data-validate="required" data-message-required="此项必须输入."/>
						</div>	
					</div>
                </div>
             <div class="row">
              	<div class="col-md-6">
                        <div class="form-group">
                            <label for="actScope" class="control-label">活动规模</label>
                            <input type="text" class="form-control" id="actScope" name="actScope" placeholder="请输入活动规模"
                            	data-validate="required" data-message-required="此项必须输入."/>
                        </div>    
                    </div>
                 <div class="col-md-6">
                     <div class="form-group">
                         <label for="actDesc" class="control-label">活动内容</label>
                         <input type="text" class="form-control" id="actDesc" name="actDesc" placeholder="请输入活动内容"
                            	data-validate="required" data-message-required="此项必须输入."/>
                     </div>    
                 </div>
             </div>
             <div class="row">
              	<div class="col-md-6">
                        <div class="form-group">
                            <label for="hostUnit" class="control-label">主办单位</label>
                            <input type="text" class="form-control" id="hostUnit" name="hostUnit" placeholder="请输入活动规模"/>
                        </div>    
                    </div>
                 <div class="col-md-6">
                     <div class="form-group">
                         <label for="linker" class="control-label">活动联系人</label>
                         <input type="text" class="form-control" id="linker" name="linker" placeholder="请输入活动联系地点"/>
                     </div>    
                 </div>
             </div>
             <div class="row">
              	<div class="col-md-6">
                        <div class="form-group">
                            <label for="tel" class="control-label">活动联系电话</label>
                            <input type="text" class="form-control" id="tel" name="tel" placeholder="请输入活动规模"/>
                        </div>    
                    </div>
                 <div class="col-md-6">
                     <div class="form-group">
                         <label for="addr" class="control-label">活动联系地点</label>
                         <input type="text" class="form-control" id="addr" name="addr" placeholder="请输入活动联系地点"/>
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

<s:enums keys="act_Status"></s:enums>
<%-- <script type="text/javascript">
$(function () {
    //下拉框数据绑定
    WebUtils.bindSelect('actStatus','act_Status');
});
</script> --%>
<script type="text/javascript">
    $(function() {
        //下拉框数据绑定
        WebUtils.bindSelect('actStatus','act_Status',true);

        //初始化列表
        var initparams = {
            "ajax" : {
                "url" : "mktactinfo/list",
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
               /*  { "data" : "actId", "sClass" : "text-center" },	 */	// 活动ID
                { "data" : "actName", "sClass" : "text-center" },	// 活动名称
                { "data" : "actType", "sClass" : "text-center" },	// 活动类型
                { "data" : "actStatus", "sClass" : "text-center" },	// 活动状态:1-失效 9-驳回 2-生效
                { "data" : "startDate", "sClass" : "text-center" },	// 开始日期
                { "data" : "endDate", "sClass" : "text-center" },	// 结束日期
                { "data" : "actScope", "sClass" : "text-center" },	// 活动规模
                { "data" : "actDesc", "sClass" : "text-center" },	// 活动内容
                { "data" : "hostUnit", "sClass" : "text-center" },	// 主办单位
                { "data" : "linker", "sClass" : "text-center" },	// 活动联系人
                { "data" : "tel", "sClass" : "text-center" },		// 活动联系电话
                { "data" : "addr", "sClass" : "text-center" },		// 活动地点
                { "data" : "createUser", "sClass" : "text-center" },	// 创建人
                { "data" : "createTime", "sClass" : "text-center" },    // 创建时间
                //{ "data" : "createOrg", "sClass" : "text-center" },		// 创建机构
                { "data" : "lastUpdUser", "sClass" : "text-center" },	// 最后修改人
                { "data" : "lastUpdTime", "sClass" : "text-center" },	// 最后修改时间
                //{ "data" : "lastUpdOrg", "sClass" : "text-center" },	// 最后修改机构
            ],
            "columnDefs" : [{
                 "render" : function (data, type, row) {
                    return WebUtils.getCodeValue("act_Status", data);
                }, 
                "targets" : [2]
            }]
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
                WebUtils.ajaxSubmitJson('mktactinfo/delete',str,function(result){
                    $('#sysmsg .modal-body').text(result.msg);
                    $('#sysmsg').modal('show');
                    table.draw();
                });
            }
        } );
        
      //新增
        $('#addbutton').click( function () {
            jQuery('#unit_detail').modal('show', {backdrop: 'static',action: "mktactinfo/add",title:"新增组织"});
        });
        
        //修改
        $('#updbutton').click( function () {
            var data = table.rows('.selected').data();
            if (data.length == 1) {
                jQuery('#unit_detail').modal('show', {backdrop: 'static',action: "mktactinfo/update",title:"修改组织"});
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
            
            if (button.attr('action') == 'mktactinfo/add') {
               // $('#unitId').removeAttr('readonly');
                $('#unit_detail form')[0].reset();
            } else {
                //$('#unitId').attr('readonly','true');
                var data = table.row('.selected').data();
                if (data) {
                	$('#actId').val(data['actId']);
                    $('#actName').val(data['actName']);
                    $('#actType').val(data['actType']);
                    $('#startDate').val(data['startDate']);
                    $('#endDate').val(data['endDate']);
                    $('#actScope').val(data['actScope']);
                    $('#actDesc').val(data['actDesc']);
                    
                    $('#hostUnit').val(data['hostUnit']);
                    $('#linker').val(data['linker']);
                    $('#tel').val(data['tel']);
                    $('#addr').val(data['addr']);
                }
            }
        });
    });
    
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
