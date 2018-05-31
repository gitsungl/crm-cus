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

<link rel="stylesheet" href="../../assets/css/fonts/linecons/css/linecons.css">
<link rel="stylesheet" href="../../assets/css/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../../assets/css/bootstrap.css">
<link rel="stylesheet" href="../../assets/css/xenon-core.css">
<link rel="stylesheet" href="../../assets/css/xenon-forms.css">
<link rel="stylesheet" href="../../assets/css/xenon-components.css">
<link rel="stylesheet" href="../../assets/css/xenon-skins.css">
<link rel="stylesheet" href="../../assets/css/custom.css">

<link rel="stylesheet" href="../../assets/js/datatables/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="../../assets/js/select2/select2.css">
<link rel="stylesheet" href="../../assets/js/select2/select2-bootstrap.css">
<link rel="stylesheet" href="../../assets/js/multiselect/css/multi-select.css">
<link rel="stylesheet" href="../../css/app.css">
<link rel="stylesheet" href="../../css/crm.css">

</head>

<body class="page-body">
  <div class="page-container">
    <div class="main-content">
      <div class="row crm-top-row">
        <div class="col-sm-6 crm-left-col crm-less-col">
          <div class="chart-item-bg">
            <div class="chart-label">
              <div id="performanceDiv" class="crm-echarts-panel-height"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 crm-right-col crm-more-col">
          <div class="chart-item-bg">
            <div class="chart-label">
              <div class="row">
                <div class="col-sm-10">
                  <div id="unfinishedDiv" class="crm-echarts-panel-height"></div>
                </div>
                <div class="col-sm-2">
                  <div class="crm-more-click-div crm-echarts-panel-height">
                    <a id="unfinishedMore" href="javascripe:void(0);">更多&gt;&gt;</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4 crm-left-col">
          <div class="chart-item-bg">
            <div class="chart-label">
              <div class="row">
                <div class="col-sm-10">
                  <div id="pubDpsChgDiv" class="crm-echarts-panel-height"></div>
                </div>
                <div class="col-sm-2">
                  <div class="crm-more-click-div crm-echarts-panel-height">
                    <a id="pubDpsChgMore" href="javascripe:void(0);">更多&gt;&gt;</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="chart-item-bg">
            <div class="chart-label">
              <div class="row">
                <div class="col-sm-10">
                  <div id="pubLoanChgDiv" class="crm-echarts-panel-height"></div>
                </div>
                <div class="col-sm-2">
                  <div class="crm-more-click-div crm-echarts-panel-height">
                    <a id="pubLoanChgMore" href="javascripe:void(0);">更多&gt;&gt;</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-4 crm-right-col">
          <div class="chart-item-bg">
            <div class="chart-label">
              <div id="busiOppDiv" class="crm-echarts-panel-height"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 crm-left-col crm-less-col">
          <div class="chart-item-bg">
            <div class="chart-label">
              <div id="perfRankingDiv" class="crm-echarts-panel-height"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 crm-right-col crm-more-col">
          <div class="chart-item-bg">
            <div class="row">
              <div class="col-sm-12 crm-message-col">
                <div class="panel panel-default collapsed">
                  <div class="row" style="margin-bottom: 5px;">
                    <div class="col-sm-10">
                      <h4>公告栏</h4>
                    </div>
                    <div class="col-sm-2 text-center">
                      <h4 class="crm-more-click-div">
                        <a id="msgMore" href="javascripe:void(0);">更多&gt;&gt;</a>
                      </h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-12 crm-message-col" style="hight:90%;">
                <div class="col-sm-4">
                  <div class="chart-label" style="padding: 0px; padding-left: 10px; padding-right: 10px;">
                    <div class="xe-widget xe-status-update crm-widget">
                      <div style="hight:5px; background: linear-gradient(red, blue);"></div>
                      <div class="xe-header crm-message-header"></div>
                      <div>&nbsp;</div>
                      <div class="xe-body crm-message-body" style="height: 160px;"></div>
                      <div class="xe-footer">
                        <a id="msgContentMore0" href="javascripe:void(0);">
                          <i class="fa-retweet"></i>了解更多&gt;
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="chart-label" style="padding: 0px; padding-left: 10px; padding-right: 10px;">
                    <div class="xe-widget xe-status-update crm-widget">
                      <div style="hight:5px; background: linear-gradient(red, blue);"></div>
                      <div class="xe-header crm-message-header"></div>
                      <div>&nbsp;</div>
                      <div class="xe-body crm-message-body" style="height: 160px;"></div>
                      <div class="xe-footer">
                        <a id="msgContentMore1" href="javascripe:void(0);">
                          <i class="fa-retweet"></i>了解更多&gt;
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="chart-label" style="padding: 0px; padding-left: 10px; padding-right: 10px;">
                    <div class="xe-widget xe-status-update crm-widget">
                      <div style="hight:5px; background: linear-gradient(red, blue);"></div>
                      <div class="xe-header crm-message-header"></div>
                      <div>&nbsp;</div>
                      <div class="xe-body crm-message-body" style="height: 160px;"></div>
                      <div class="xe-footer">
                        <a id="msgContentMore2" href="javascripe:void(0);">
                          <i class="fa-retweet"></i>了解更多&gt;
                        </a>
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

  <div class="modal fade" id="msgContentDiv">
    <div class="modal-dialog" style="width: 60%;">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body panel-body-">
          <div class="panel panel-default collapsed">
            <div id="msgContentData"></div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info" data-dismiss="modal">关闭</button>
        </div>
      </div>
    </div>
  </div>
</body>

<script src="../../assets/js/jquery-1.11.1.min.js"></script>
<script src="../../assets/js/jquery-ui/jquery-ui.min.js"></script>
<script src="../../assets/js/jquery-validate/jquery.validate.min.js"></script>

<script src="../../assets/js/bootstrap.min.js"></script>
<script src="../../assets/js/TweenMax.min.js"></script>
<script src="../../assets/js/resizeable.js"></script>
<script src="../../assets/js/joinable.js"></script>
<script src="../../assets/js/xenon-api.js"></script>
<script src="../../assets/js/xenon-toggles.js"></script>
<script src="../../assets/js/xenon-custom.js"></script>
<script src="../../assets/js/moment.min.js"></script>

<script src="../../assets/js/datepicker/bootstrap-datepicker.js"></script>
<script src="../../assets/js/datatables/js/jquery.dataTables.min.js"></script>
<script src="../../assets/js/datatables/dataTables.bootstrap.js"></script>
<script src="../../assets/js/datatables/tabletools/dataTables.tableTools.min.js"></script>
<script src="../../assets/js/select2/select2.min.js"></script>
<script src="../../assets/js/selectboxit/jquery.selectBoxIt.min.js"></script>

<script src="../../assets/js/echarts/echarts.min.js"></script>
<script src="../../assets/js/echarts/crm-homepage1.js"></script>
<script src="../../assets/js/echarts/crm-homepage2.js"></script>

<script src="../../js/WebUtils.js"></script>

<jsp:include page="/WEB-INF/template/settings.jsp"></jsp:include>

<script type="text/javascript">
    var noIcons = {
     "no1" : "../../images/crm/no1.png",
     "no2" : "../../images/crm/no2.png",
     "no3" : "../../images/crm/no3.png",
     "nom" : "../../images/crm/nom.png"
    };

    var colorStyle = {
        blackStyle : "#666666",
        guidelines : "#BDBDBD",
        areaStyle : "#DDF1FF"
    };

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
                0, 0, 0, 1,
                [
                    {offset: 0, color: "#99E28E"},
                    {offset: 1, color: "#57CFA9"}
                ]
            )
        }
    };

    var gradientStyle3 = {
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

    var gradientStyle4 = {
        normal: {
            color: new echarts.graphic.LinearGradient(
                1, 0, 0, 0,
                [
                    {offset: 0, color: "#E171FD"},
                    {offset: 1, color: "#9682FD"}
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
            position : "right",
            textStyle: {
                color: colorStyle.blackStyle
            },
            fontSize : 9,
            textBorderWidth : 1
        }
    };

    var fontLabel3 = {
        normal : {
            show : true,
            position : "inside",
            textStyle: {
                color: colorStyle.blackStyle
            },
            fontSize : 12,
            textBorderWidth : 1
        }
    };

    // 营销业绩趋势图
    var myChart_performance = echarts.init(document.getElementById("performanceDiv"), "crm-homepage1");
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
    var myChart_unfinished = echarts.init(document.getElementById("unfinishedDiv"), "crm-homepage1");
    myChart_unfinished.setOption({
        title : {
            text : "未完成营销任务",
            subtext : "(万元)",
            top : "-1.5%"
        },
        legend: {
            data: ["任务奖金总额", "完成度"]
        },
        xAxis : [ {
            type : "category",
            axisLabel : {
                interval : 0,
                rotate : 25,
                fontSize : 8
            },
            data : []
        }, {
            type : "category"
        } ],
        yAxis : [ {
            type : "value",
            show : false
        } ],
        series : [ {
            name : "任务奖金总额",
            type : "bar",
            barMaxWidth: "15px",
            label: fontLabel,
            itemStyle : {
                color : colorStyle.areaStyle
            },
            data : []
        }, {
            name : "完成度",
            type : "bar",
            barMaxWidth: "15px",
            xAxisIndex : 1,
            itemStyle: gradientStyle,
            data : []
        } ]
    }, true);

    // 客户存款变动排名
    var myChart_pubDpsChg = echarts.init(document.getElementById("pubDpsChgDiv"), "crm-homepage1");
    myChart_pubDpsChg.setOption({
        title : {
            text : "客户存款变动排名",
            subtext : "(万元)"
        },
        series : [ {
            type : "funnel",
            width : "47%",
            min: 0,
            minSize: "0%",
            maxSize: "100%",
            gap : 2,
            label : fontLabel3,
            data : []
        } ]
    }, true);

    // 客户贷款变动排名
    var myChart_pubLoanChg = echarts.init(document.getElementById("pubLoanChgDiv"), "crm-homepage2");
    myChart_pubLoanChg.setOption({
        title : {
            text : "客户贷款变动排名",
            subtext : "(万元)"
        },
        series : [ {
            type : "funnel",
            width : "47%",
            min: 0,
            minSize: "0%",
            maxSize: "100%",
            gap : 2,
            sort : "ascending",
            label : fontLabel3,
            data : []
        } ]
    }, true);

    // 可营销商机
    var myChart_busiOpp = echarts.init(document.getElementById("busiOppDiv"), "crm-homepage1");
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
            itemStyle: gradientStyle2,
            data : []
        } ]
    }, true);

    // 业绩排名
    var myChart_perfRanking = echarts.init(document.getElementById("perfRankingDiv"), "crm-homepage1");
    myChart_perfRanking.setOption({
        title : {
            text : "业绩排名"
        },
        xAxis : {
            type : "value",
            name : "(万元)",
            nameTextStyle : {
                fontSize : 11
            },
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
                    var va1 = value.slice(0, 3);
                    var va2 = value.slice(3);
                    return (va1 === "no4" || va1 === "no5") ? "{value|" + va2 + "}" : "{" + va1 + "| }\n{value|" + va2 + "}";
                },
                rich : {
                    value : {
                        lineHeight : 10,
                        fontSize : 9,
                        color: colorStyle.blackStyle
                    },
                    no1 : {
                        align : "right",
                        backgroundColor : {
                            image : noIcons.no1
                        }
                    },
                    no2 : {
                        align : "right",
                        backgroundColor : {
                            image : noIcons.no2
                        }
                    },
                    no3 : {
                        align : "right",
                        backgroundColor : {
                            image : noIcons.no3
                        }
                    },
                    nom : {
                        align : "right",
                        backgroundColor : {
                            image : noIcons.nom
                        }
                    },
                    no4 : {
                        align : "right"
                    },
                    no5 : {
                        align : "right"
                    }
                }
            }
        },
        series : [ {
            type : "bar",
            barMaxWidth : "15px",
            label : fontLabel2,
            itemStyle: gradientStyle3,
            data : []
        } ]
    }, true);

    var msg = [];
    // 异步加载数据
    $.ajax({
        url : "homepage_info/homepage",
        type : "post",
        dataType : "json",
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
                if (result.data.unfinished.taskName.length > 0) {
                    $("#unfinishedMore").on("click", function() {
                        parent.openPage("custbase_info", "客户管理", "/cus/custbase/custbase_info");
                    });
                }
                // 客户存款变动排名
                var pubDpsChg = result.data.pubDpsChg;
                myChart_pubDpsChg.setOption({
                    series : [ {
                        max : pubDpsChg[0].value,
                        data : pubDpsChg
                    } ]
                });
                if (pubDpsChg.length > 0) {
                    $("#pubDpsChgMore").on("click", function(ev) {
                        parent.openPage("custbase_info", "客户管理", "/cus/custbase/custbase_info");
                    });
                }
                // 客户贷款变动排名
                var pubLoanChg = result.data.pubLoanChg;
                myChart_pubLoanChg.setOption({
                    series : [ {
                        max : pubLoanChg[0].value,
                        data : result.data.pubLoanChg
                    } ]
                });
                if (pubLoanChg.length > 0) {
                    $("#pubLoanChgMore").on("click", function(ev) {
                        parent.openPage("custbase_info", "客户管理", "/cus/custbase/custbase_info");
                    });
                }
                // 可营销商机
                myChart_busiOpp.setOption({
                    series : [ {
                        // data : [ "90", "70", "45" ]
                        data : result.data.busiOpp
                    } ]
                });
                // 业绩排名
                var perfRanking = result.data.perfRanking.perfRanking;
                var perfRankingMe = result.data.perfRanking.perfRankingMe;
                perfRanking[perfRankingMe] = {
                    value : perfRanking[perfRankingMe],
                    itemStyle : gradientStyle4
                };
                myChart_perfRanking.setOption({
                    yAxis : {
                        // data : [ "no1", "no2", "no3", "no4", "nom" ]
                        data : result.data.perfRanking.perfRankingName
                    },
                    series : [ {
                        // data: [ 165, 140, 50, 30, 10 ]
                        data : result.data.perfRanking.perfRanking
                    } ]
                });
                // 公告栏
                msg = result.data.message;
                if (msg.length > 0) {
                    var $msgheader = $(".crm-message-header");
                    var $msgbody = $(".crm-message-body");
                    for (var i_msg = 0; i_msg < 3; i_msg++) {
                        $($msgheader[i_msg]).empty().append(msg[i_msg].msgTitle);
                        $($msgbody[i_msg]).empty().append(msg[i_msg].msgContent.slice(0, 150) + "…");
                        $("#msgContentMore" + i_msg).off().on("click", msgContentClick);
                    }
                }
            }
        },
        error : function(errorMsg) {
            WebUtils.alert("图表请求数据失败!");
        }
    });

    function msgContentClick() {
        var msgContentId = $(this).attr("id");
        var i_msgContent = msgContentId.substring(msgContentId.length - 1);
        $("#msgContentData").empty().append(msg[i_msgContent].msgContent);
        jQuery('#msgContentDiv').modal('show', {backdrop : 'static', title : msg[i_msgContent].msgTitle});
    }

    $('#msgContentDiv').on('show.bs.modal', function (event) {
        //设置详细对话框内容
        var button = $(event.relatedTarget);
        var modal = $(this);
        modal.find('.modal-title').text(button.attr('title'));
        modal.find('form').attr("action", button.attr('action'));
    });

    $(function () {
        window.addEventListener("resize", function () {
            myChart_performance.resize();
            myChart_unfinished.resize();
            myChart_pubDpsChg.resize();
            myChart_busiOpp.resize();
            myChart_perfRanking.resize();
            myChart_pubLoanChg.resize();
        });

        $("#msgMore").on("click", function(ev) {
            parent.openPage("custbase_info", "客户管理", "/cus/custbase/custbase_info");
        });
    });
</script>
</html>