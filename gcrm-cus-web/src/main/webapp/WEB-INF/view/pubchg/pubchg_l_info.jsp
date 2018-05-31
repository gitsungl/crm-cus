<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="s" uri="/auth"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>主管客户列表</title>

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
          <h3 class="panel-title">主管客户贷款列表</h3>
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
                  <label class="control-label">客户号</label>
                  <input type="text" class="form-control" id="custNo" name="custNo" placeholder="客户号">
                </div>
              </div>
              <div class="col-md-3">
                <div class="form-group">
                  <label class="control-label">客户全称</label>
                  <input type="text" class="form-control" id="custName" name="custName" placeholder="客户全称">
                </div>
              </div>
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
             <!--  <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-blue glyphicon glyphicon-tag" id="view_button"><input type="checkbox">客户视图</label>
              </div> -->
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
                <th>客户号</th>
                <th>客户名</th>
                <th>存款余额</th>
                <th>比上日</th>
                <th>比上月</th>
                <th>比上年</th>
                <th>员工编号</th>
                <th>员工姓名</th>
                <th>业务日期</th>
                <th>币种</th>
              </tr>
            </thead>
            <tbody class="middle-align">
            </tbody>
          </table>
        </div>
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

<s:enums keys="yes_no"></s:enums>

<script type="text/javascript">
    $(function() {
        //下拉框数据绑定
        // WebUtils.bindSelect("listType","yes_no",true);
        //初始化列表
        var initparams = {
            "ajax" : {
                "url" : "pubchg_info/listPubChgInfoL?&staffId=${loginUserId}",
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
                { "data" : "custNo", "sClass" : "text-center" }, // 客户号
                { "data" : "custName", "sClass" : "text-center" }, // 客户名
                { "data" : "bal", "sClass" : "text-center" }, // 存款余额
                { "data" : "thanDAmt", "sClass" : "text-center" }, // 比上年
                { "data" : "thanMAmt", "sClass" : "text-center" }, // 比上日
                { "data" : "thanYAmt", "sClass" : "text-center" }, // 比上月
                { "data" : "staffId", "sClass" : "text-center" }, // 员工编号
                { "data" : "staffName", "sClass" : "text-center" }, // 员工姓名
                { "data" : "bizDateStr", "sClass" : "text-center" }, // 业务日期
                { "data" : "cry", "sClass" : "text-center" },
            ],
            "columnDefs" : [{
                "targets" : [8]
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
    });
</script>
</html>
