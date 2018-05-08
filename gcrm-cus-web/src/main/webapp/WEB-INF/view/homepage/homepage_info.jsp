<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@ taglib prefix="s" uri="/auth" %>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>product_info Page</title>

<link rel="stylesheet" href="../assets/css/fonts/linecons/css/linecons.css">
<link rel="stylesheet" href="../assets/css/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../assets/css/bootstrap.css">
<link rel="stylesheet" href="../assets/css/xenon-core.css">
<link rel="stylesheet" href="../assets/css/xenon-forms.css">
<link rel="stylesheet" href="../assets/css/xenon-components.css">
<link rel="stylesheet" href="../assets/css/xenon-skins.css">
<link rel="stylesheet" href="../assets/css/custom.css">

<!-- Imported styles on this page -->
<link rel="stylesheet" href="../assets/js/datatables/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="../assets/js/select2/select2.css">
<link rel="stylesheet" href="../assets/js/select2/select2-bootstrap.css">
<link rel="stylesheet" href="../assets/js/multiselect/css/multi-select.css">
<link rel="stylesheet" href="../css/app.css">

<script src="../assets/js/jquery-1.11.1.min.js"></script>

<style type="text/css">
#mktStfPerfDiv {
    top: 9.5px;
    left: 9.5px;
    width : 440px;
    height: 280px;
    display: block;
    background-color: none;
    width: 440px;
}
</style>

</head>

<body class="page-body" style="overflow-x: hidden;">
<jsp:include page="/WEB-INF/template/settings.jsp"></jsp:include>

<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="mktStfPerfDiv"></div>

<!-- Bottom Scripts -->
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/TweenMax.min.js"></script>
<script src="../assets/js/resizeable.js"></script>
<script src="../assets/js/joinable.js"></script>
<script src="../assets/js/xenon-api.js"></script>
<script src="../assets/js/xenon-toggles.js"></script>
<script src="../assets/js/datatables/js/jquery.dataTables.min.js"></script>
<script src="../assets/js/moment.min.js"></script>

<!-- Imported scripts on this page -->
<script src="../assets/js/datatables/dataTables.bootstrap.js"></script>
<script src="../assets/js/datatables/tabletools/dataTables.tableTools.min.js"></script>
<script src="../assets/js/select2/select2.min.js"></script>
<script src="../assets/js/jquery-ui/jquery-ui.min.js"></script>
<script src="../assets/js/selectboxit/jquery.selectBoxIt.min.js"></script>
<script src="../assets/js/jquery-validate/jquery.validate.min.js"></script>
<script src="../assets/js/datepicker/bootstrap-datepicker.js"></script>

<!-- JavaScripts initializations and stuff -->
<script src="../assets/js/xenon-custom.js"></script>
<script src="../js/WebUtils.js"></script>

<!-- ECharts单文件引入 -->
<script src="../assets/js/echarts/echarts.js"></script>

<script type="text/javascript">
	var month = [], perfAcph = [];

    $(function() {
    });

    require.config({
        paths: {
            echarts: "../assets/js/echarts"
        }
    });

    require(
        [
            "echarts",
            "echarts/chart/line"
        ],
        function (ec) {
            var myChart_mktStfPerf = ec.init(document.getElementById("mktStfPerfDiv"));
            var option_mktStfPerf = {
                title : {
                    text : "营销业绩趋势图",
                    x : 19,
                    y : 11.5
                },
                xAxis : [
                    {
                        type : "category",
                        boundaryGap : false,
                        axisLine : { show: false },
                        axisTick : { show: false },
                        splitLine : { show: false },
                        data : month
                    }
                ],
                yAxis : [
                    {
                        type : "value",
                        axisLine : { show: false },
                        axisTick : { show: false }
                    }
                ],
                series : [
                    {
                        type : "line",
                        smooth : true,
                        data : perfAcph
                    }
                ]
            };

            $.ajax({
                url : "homepage_info/list",
                type : "post",
                dataType : "json",
                async : false,
                success : function(result) {
                    if (WebUtils.isSuccess(result)) {
                        var data = result.data;
                        for (var i = 0; i < data.length; i++) {
                            month.push(data[i].month);
                            perfAcph.push(data[i].perfAcph);
                        }
                    }
                },
                error : function(errorMsg) {
                    alert("图表请求数据失败!");
                }
            })

            myChart_mktStfPerf.setOption(option_mktStfPerf);

        }
    );

</script>
</body>
</html>