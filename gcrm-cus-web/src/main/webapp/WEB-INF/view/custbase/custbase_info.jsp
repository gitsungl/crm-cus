<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="s" uri="/auth"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>客户列表</title>

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
          <h3 class="panel-title">客户列表</h3>
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
              <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-blue glyphicon glyphicon-tag" id="view_button"> <input type="checkbox">客户视图</label>
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
                <th>客户号</th>
                <th>客户简称</th>
                <th>客户全称</th>
                <th>客户英文名称</th>
                <th>联系电话</th>
                <th>邮箱地址</th>
                <th>传真电话</th>
                <th>官网地址</th>
                <th>公司地址</th>
                <th>所属行业</th>
                <th>公司规模</th>
                <th>年营业额</th>
                <th>经营范围</th>
                <th>公司介绍</th>
                <th>注册资金币种</th>
                <th>注册资金</th>
                <th>成立日期</th>
                <th>法定代表人</th>
                <th>企业登记注册号</th>
                <th>组织机构代码</th>
                <th>组织机构代码到期日</th>
                <th>统一社会信用证</th>
                <th>企业类型</th>
                <th>经验状态</th>
                <th>营业期限</th>
                <th>核准日期</th>
                <th>登记机关</th>
                <th>上市公司标识</th>
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
                "url" : "custbase_info/listCustBaseInfo",
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
                { "data" : "shortName", "sClass" : "text-center" }, // 客户简称
                { "data" : "custName", "sClass" : "text-center" }, // 客户全称
                { "data" : "enName", "sClass" : "text-center" }, // 客户英文名称
                { "data" : "officeTel", "sClass" : "text-center" }, // 联系电话
                { "data" : "email", "sClass" : "text-center" }, // 邮箱地址
                { "data" : "fax", "sClass" : "text-center" }, // 传真电话
                { "data" : "webAddr", "sClass" : "text-center" }, // 官网地址
                { "data" : "companyAddr", "sClass" : "text-center" }, // 公司地址
                { "data" : "industryType", "sClass" : "text-center" }, // 所属行业
                { "data" : "enterpriseScope", "sClass" : "text-center" }, // 公司规模
                { "data" : "revenue", "sClass" : "text-center" }, // 年营业额
                { "data" : "businessScope", "sClass" : "text-center" }, // 经营范围
                { "data" : "companyDesc", "sClass" : "text-center" }, // 公司介绍
                { "data" : "currency", "sClass" : "text-center" }, // 注册资金币种
                { "data" : "regCapital", "sClass" : "text-center" }, // 注册资金
                { "data" : "setupDate", "sClass" : "text-center" }, // 成立日期
                { "data" : "legalPerson", "sClass" : "text-center" }, // 法定代表人
                { "data" : "regId", "sClass" : "text-center" }, // 企业登记注册号
                { "data" : "orgCertNo", "sClass" : "text-center" }, // 组织机构代码
                { "data" : "orgCertDate", "sClass" : "text-center" }, // 组织机构代码到期日
                { "data" : "uniformCreditNo", "sClass" : "text-center" }, // 统一社会信用证
                { "data" : "enterpriseType", "sClass" : "text-center" }, // 企业类型
                { "data" : "operateStatus", "sClass" : "text-center" }, // 经验状态
                { "data" : "operateTerm", "sClass" : "text-center" }, // 营业期限
                { "data" : "checkDate", "sClass" : "text-center" }, // 核准日期
                { "data" : "regOrg", "sClass" : "text-center" }, // 登记机关
                { "data" : "listingcorpFlag", "sClass" : "text-center" }, // 上市公司标识
            ],
            "columnDefs" : [{
                "render" : function (data, type, row) {
                    return WebUtils.getCodeValue("yes_no", data);
                },
                "targets" : [27]
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

        //客户视图
        $("#view_button").click(function() {
            var data = table.rows(".selected").data();
            if (data && data.length > 0) {
                if (data.length == 1) {
                    var url = "/cus/custbase/custbase_view?id=" + data[0].id;
                    parent.openPage("recordsdetail" + data[0].id, "客户视图-" + data[0].shortName, url);
                } else {
                    WebUtils.alert("只能选择一条记录");
                }
            } else {
                WebUtils.alert("请选择一条记录");
            }
        });

        //导出
        $("#download_button").click(function() {
            var tableInfo = table.page.info();
            var tableRowsCount = tableInfo.recordsTotal;
            if (tableRowsCount && tableRowsCount != undefined && tableRowsCount > 0) {
                var sdata = {};
                var inputName = WebUtils.convertFormData("inputName");
                for ( var index in inputName) {
                    sdata[index] = inputName[index];
                }
                var str = JSON.stringify(sdata);
                window.location.href = "exportRecords?str=" + str;
            } else {
                WebUtils.alert("请先查询出结果再导出！");
            }
        });
    });
</script>
</html>
