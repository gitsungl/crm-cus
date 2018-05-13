<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="s" uri="/auth"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>客户经理</title>

<link rel="stylesheet" href="../assets/css/fonts/linecons/css/linecons.css">
<link rel="stylesheet" href="../assets/css/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../assets/css/bootstrap.css">
<link rel="stylesheet" href="../assets/css/xenon-core.css">
<link rel="stylesheet" href="../assets/css/xenon-forms.css">
<link rel="stylesheet" href="../assets/css/xenon-components.css">
<link rel="stylesheet" href="../assets/css/xenon-skins.css">
<link rel="stylesheet" href="../assets/css/custom.css">

<link rel="stylesheet" href="../assets/js/datatables/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="../assets/js/select2/select2.css">
<link rel="stylesheet" href="../assets/js/select2/select2-bootstrap.css">
<link rel="stylesheet" href="../assets/js/multiselect/css/multi-select.css">
<link rel="stylesheet" href="../css/app.css">

<style type="text/css">
.page-container {
  width: 90%;
}
.col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
  padding-left: 7px;
  padding-right: 7px;
}
.chart-item-bg {
  margin-bottom: 14px;
}
.leftCol {
  padding-left: 15px;
}
.rightCol {
  padding-right: 15px;
}
.lessCol {
  width: 43%;
}
.moreCol {
  width: 57%;
}
.echartsDiv {
  height: 280px;
}
.echartsCol {
  height: 340px;
}
#topRow {
  margin-top: 1.5%;
}
#performanceDiv {
  width: 440px;
}
#unfinishedDiv {
  width: 580px;
}
#pubDpsChgDiv {
  width: 337px;
}
#pubLoanChgDiv {
  width: 337px;
}
#busiOppDiv {
  width: 337px;
}
#perfRankingDiv {
  width: 440px;
}
</style>
</head>

<body class="page-body">
  <div class="page-container">
    <div class="main-content">
      <div id="topRow" class="row">
        <div class="col-sm-6 leftCol lessCol">
          <div class="chart-item-bg echartsCol">
            <div class="chart-label">
              <div id="performanceDiv" class="echartsDiv"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 rightCol moreCol">
          <div class="chart-item-bg echartsCol">
            <div class="chart-label">
              <div id="unfinishedDiv" class="echartsDiv"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4 leftCol">
          <div class="chart-item-bg echartsCol">
            <div class="chart-label">
              <div id="pubDpsChgDiv" class="echartsDiv"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="chart-item-bg echartsCol">
            <div class="chart-label">
              <div id="pubLoanChgDiv" class="echartsDiv"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-4 rightCol">
          <div class="chart-item-bg echartsCol">
            <div class="chart-label">
              <div id="busiOppDiv" class="echartsDiv"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 leftCol lessCol">
          <div class="chart-item-bg echartsCol">
            <div class="chart-label">
              <div id="perfRankingDiv" class="echartsDiv"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 rightCol moreCol">
          <div class="chart-item-bg echartsCol">
            <div class="chart-label">
              <div id="messageDiv" class="echartsDiv"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

<script src="../assets/js/jquery-1.11.1.min.js"></script>
<script src="../assets/js/jquery-ui/jquery-ui.min.js"></script>
<script src="../assets/js/jquery-validate/jquery.validate.min.js"></script>

<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/TweenMax.min.js"></script>
<script src="../assets/js/resizeable.js"></script>
<script src="../assets/js/joinable.js"></script>
<script src="../assets/js/xenon-api.js"></script>
<script src="../assets/js/xenon-toggles.js"></script>
<script src="../assets/js/xenon-custom.js"></script>
<script src="../assets/js/moment.min.js"></script>

<script src="../assets/js/datepicker/bootstrap-datepicker.js"></script>
<script src="../assets/js/datatables/js/jquery.dataTables.min.js"></script>
<script src="../assets/js/datatables/dataTables.bootstrap.js"></script>
<script src="../assets/js/datatables/tabletools/dataTables.tableTools.min.js"></script>
<script src="../assets/js/select2/select2.min.js"></script>
<script src="../assets/js/selectboxit/jquery.selectBoxIt.min.js"></script>

<script src="../assets/js/echarts/echarts.js"></script>
<script src="../assets/js/echarts/macarons.js"></script>

<script src="../js/WebUtils.js"></script>

<jsp:include page="/WEB-INF/template/settings.jsp"></jsp:include>

<script type="text/javascript">
    var noIcons = {
     "no1" : "../images/crm/no1.png",
     "no2" : "../images/crm/no2.png",
     "no3" : "../images/crm/no3.png",
     "nome" : "../images/crm/nome.png"
    };

    var colorStyle = {
        guidelines : "#BDBDBD",
        areaStyle : "#DDF1FF"
    }

    var gradientStyle = {
        normal: {
            color: new echarts.graphic.LinearGradient(
                0, 0, 0, 1,
                [
                    {offset: 0, color: "#35D6FF"},
                    {offset: 1, color: "#3B90FF"}
                ]
            )
        }
    };

    var gradientStyle2 = {
        normal: {
            color: new echarts.graphic.LinearGradient(
                1, 0, 0, 0,
                [
                    {offset: 0, color: "#35D6FF"},
                    {offset: 1, color: "#3B90FF"}
                ]
            )
        }
    };

    var gradientStyle3 = {
        normal: {
            color: new echarts.graphic.LinearGradient(
                0, 0, 0, 1,
                [
                    {offset: 0, color: "#99E28E"},
                    {offset: 1, color: "#57CFA9"}
                ]
            )
        }
    };

    var fontLabel = {
        normal : {
            show : true,
            position : "top",
            fontSize : 10,
            textBorderWidth : 1,
            color : colorStyle.guidelines
        }
    };

    var fontLabel2 = {
        normal : {
            show : true,
            position : "insideRight",
            textStyle: {
                color: "#000000"
            },
            fontSize : 10,
            textBorderWidth : 1,
            color : colorStyle.guidelines
        }
    };

    // 营销业绩趋势图
    var myChart_performance = echarts.init(document.getElementById("performanceDiv"), "macarons");
    myChart_performance.setOption({
        title : {
            text : "营销业绩趋势图"
        },
        xAxis : [ {
            type : "category",
            name : "(月)",
            position : "bottom",
            boundaryGap : false,
            axisLine : {
                show : false
            },
            splitLine : {
                show : false
            },
            data : [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]
        } ],
        yAxis : [ {
            type : "value",
            name : "(万元)",
            position : "left",
            axisLine : {
                show : false
            }
        } ],
        series : [ {
            type : "line",
            label : fontLabel,
            areaStyle : {
                color : colorStyle.areaStyle
            },
            data : []
        } ]
    }, true);

    // 未完成营销任务
    var myChart_unfinished = echarts.init(document.getElementById("unfinishedDiv"), "macarons");
    myChart_unfinished.setOption({
        title : {
            text : "未完成营销任务",
            subtext : "(万元)"
        },
        xAxis : [ {
            type : "category",
            data : []
        }, {
            type : "category"
        } ],
        yAxis : [ {
            type : "value",
            show : false
        } ],
        series : [ {
            type : "bar",
            barMaxWidth: "15px",
            label: fontLabel,
            itemStyle : {
                color : colorStyle.areaStyle
            },
            data : []
        }, {
            type : "bar",
            barMaxWidth: "15px",
            xAxisIndex : 1,
            itemStyle: gradientStyle,
            data : []
        } ]
    }, true);

    // 客户存款变动排名
    var myChart_pubDpsChg = echarts.init(document.getElementById("pubDpsChgDiv"), "macarons");
    myChart_pubDpsChg.setOption({
        title : {
            text : "客户存款变动排名",
            subtext : "(万元)"
        },
        series : [ {
            type : "funnel",
            width : "50%",
            gap : 2,
            data : []
        } ]
    }, true);

    // 客户贷款变动排名
    var myChart_pubLoanChg = echarts.init(document.getElementById("pubLoanChgDiv"), "macarons");
    myChart_pubLoanChg.setOption({
        title : {
            text : "客户贷款变动排名",
            subtext : "(万元)"
        },
        series : [ {
            type : "funnel",
            width : "50%",
            gap : 2,
            sort : "ascending",
            data : []
        } ]
    }, true);

    // 可营销商机
    var myChart_busiOpp = echarts.init(document.getElementById("busiOppDiv"), "macarons");
    myChart_busiOpp.setOption({
        title : {
            text : "可营销商机"
        },
        xAxis : [ {
            type : "category",
            splitLine : {
                show : false
            },
            data : [ "商机总数", "我认领", "已完成" ]
        } ],
        yAxis : [ {
            type : "value",
            name : "(个)",
            position : "left",
            splitLine : {
                show : false
            }
        } ],
        series : [ {
            type : "bar",
            barMaxWidth: "20px",
            label : fontLabel,
            itemStyle: gradientStyle3,
            data : []
        } ]
    }, true);

    // 业绩排名
    var myChart_perfRanking = echarts.init(document.getElementById("perfRankingDiv"), "macarons");
    myChart_perfRanking.setOption({
        title : {
            text : "业绩排名"
        },
        xAxis : {
            type : "value",
            name : "(万元)",
            position : "top",
            splitLine : {
                show : false
            }
        },
        yAxis : {
            type : "category",
            inverse : true,
            axisLine : {
                show : false
            },
            splitLine : {
                show : false
            },
            data : [],
            axisLabel : {
                formatter : function(value) {
                    return (value === "4" || value === "5") ? "{" + value + "| }\n{value|" + value + "}" : "{" + value + "| }\n{value|}";
                },
                rich : {
                    value : {
                        lineHeight : 0,
                        align : "center"
                    },
                    no1 : {
                        align : "center",
                        backgroundColor : {
                            image : noIcons.no1
                        }
                    },
                    no2 : {
                        align : "center",
                        backgroundColor : {
                            image : noIcons.no2
                        }
                    },
                    no3 : {
                        align : "center",
                        backgroundColor : {
                            image : noIcons.no3
                        }
                    },
                    nome : {
                        align : "center",
                        backgroundColor : {
                            image : noIcons.nome
                        }
                    },
                    4 : {
                        align : "center"
                    },
                    5 : {
                        align : "center"
                    }
                }
            }
        },
        series : [ {
            type : "bar",
            barMaxWidth : "15px",
            label : fontLabel2,
            itemStyle: gradientStyle2,
            data : []
        } ]
    }, true);

    // 异步加载数据
    $.ajax({
        url : "homepage_info/homepage",
        type : "post",
        dataType : "json",
        async : true,
        success : function(result) {
            if (WebUtils.isSuccess(result)) {
                // 营销业绩趋势图
                myChart_performance.setOption({
                    series : [ {
                        data : result.data.perfAcph
                    } ]
                });
                // 未完成营销任务
                myChart_unfinished.setOption({
                    xAxis : {
                        // data : [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]
                        data : result.data.unfinished.taskName
                    },
                    series : [ {
                        // data: [ 1.6, 2.6, 3.6, 4.6, 5.6, 6.6, 7.6, 8.6, 9.6, 10.6, 11.6, 12.6 ]
                        data : result.data.unfinished.perfTotal
                    }, {
                        // data: [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 8 ]
                        data : result.data.unfinished.perfAlready
                    } ]
                });
                // 客户存款变动排名
                myChart_pubDpsChg.setOption({
                    series : [ {
                        min : 0,
                        max : 100,
                        data : result.data.pubDpsChg
                    } ]
                });
                // 客户贷款变动排名
                myChart_pubLoanChg.setOption({
                    series : [ {
                        data : result.data.pubLoanChg
                    } ]
                });
                // 可营销商机
                myChart_busiOpp.setOption({
                    series : [ {
                        data : [ "90", "70", "45" ]
                    // data: result.data.busiOpp
                    } ]
                });
                // 业绩排名
                myChart_perfRanking.setOption({
                    yAxis : {
                        // data : [ "no1", "no2", "no3", "4", "nome" ]
                        data : result.data.perfRanking.perfRankingAxis
                    },
                    series : [ {
                        // data: [ 165, 140, 50, 30, 10 ]
                        data : result.data.perfRanking.perfRanking
                    } ]
                });
            }
        },
        error : function(errorMsg) {
            WebUtils.alert("图表请求数据失败!");
        }
    })
</script>
</html>