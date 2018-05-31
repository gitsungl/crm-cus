<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="s" uri="/auth"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>主管</title>

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

<style type="text/css">
.chart-item-bg .chart-label {
	position:relative;
}
.panel {
    margin-bottom: 0px;
    padding-bottom: 5px;
}
.crm-eq-col {
	width : 50%;
}
/* .chart-label-c {
	width : 500px;
	height : 340px;
} */
</style>
</head>

<body class="page-body">
  <div class="page-container">
    <div class="main-content">
      <div class="row crm-top-row">
        <div class="col-sm-6 crm-left-col crm-eq-col">
          <div class="chart-item-bg crm-echarts-col-height">
            <div class="chart-label">
              <div id="performanceDiv" class="crm-echarts-panel-height"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 crm-right-col crm-eq-col">
          <div class="chart-item-bg crm-echarts-col-height">
            <div class="chart-label">
              <div id="perfRankingDiv" class="crm-echarts-panel-height"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4 crm-left-col">
          <div class="chart-item-bg crm-echarts-col-height">
            <div class="chart-label">
              <div id="unfinishedDiv" class="crm-echarts-panel-height"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="chart-item-bg crm-echarts-col-height">
            <div class="chart-label">
              <div id="pubDpsChgDiv" class="crm-echarts-panel-height"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-4 crm-right-col">
          <div class="chart-item-bg crm-echarts-col-height">
            <div class="chart-label">
              <div id="pubLoanChgDiv" class="crm-echarts-panel-height"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 crm-left-col crm-less-col">
          <div class="chart-item-bg crm-echarts-col-height">
            <div class="chart-label">
              <div><div style="float:left;width: 150px;padding-left: 35px;padding-top: 12px;font-size:18px">任务审批图例</div><div style="float: right;padding-right: 38px;padding-top: 19px;font-size:12px"><a><img alt="" src="../../images/crm/0_doing.png">任务审批完成&nbsp;&nbsp;&nbsp;</a><a><img alt="" src="../../images/crm/1_done.png">有新审批任务</a></div></div>
              <div id="PubVifyListPoDiv" class="crm-echarts-panel-height"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 crm-right-col crm-more-col">
          <div class="chart-item-bg crm-echarts-col-height">
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
              <div class="col-sm-12 crm-message-col">
                <div class="col-sm-4">
                  <div class="chart-label" style="padding: 0px; padding-left: 10px; padding-right: 10px;">
                    <div class="xe-widget xe-status-update crm-widget">
                      <div style="hight:5px; background: linear-gradient(red, blue);"></div>
                      <div class="xe-header crm-message-header"></div>
                      <div>&nbsp;</div>
                      <div class="xe-body crm-message-body" style="height: 160px;"></div>
                      <div class="xe-footer">
                        <a href="#">
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
                        <a href="#">
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
                        <a href="#">
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
    }

    
    var layouts = [
        [[0, 0]],
        [[-0.25, 0], [0.25, 0]]
    ];
     //图标处理位置 
    var pathes = [
        'M936.857805 523.431322c0 0-42.065715-68.89513-88.786739-68.89513-46.68416 0-95.732122 71.223091-95.732122 71.223091s-44.28544-72.503296-93.440922-71.152538c-35.565466 0.977306-62.89705 30.882406-79.124275 64.06615L579.773747 790.800797c-3.253248 37.391565-5.677568 50.904371-12.002816 69.63497-6.651802 19.698688-19.544883 35.227341-31.650099 45.909606-14.30231 12.621414-29.59831 22.066586-45.854208 27.424563-16.28969 5.362074-30.098739 6.496973-51.536794 6.496973-19.498906 0-36.95104-2.963456-52.395418-8.850534-15.410586-5.887078-28.420403-14.313984-39.034573-25.246003-10.613146-10.930995-18.757939-24.08151-24.435507-39.525171-5.676544-15.443763-8.532685-40.195482-8.532685-59.270963l0-26.232454 74.435273 0c0 24.644301-0.17705 64.452915 8.81408 77.006848 9.02697 12.515021 22.756147 18.092032 41.148826 18.791014 16.728678 0.636518 30.032179-8.061645 30.032179-8.061645s11.922022-10.5472 14.992077-19.756954c2.674995-8.025805 3.565363-22.180147 3.565363-22.180147s2.080461-21.789286 2.080461-34.234675L489.399906 514.299369c-16.678502-18.827776-43.801395-61.938688-82.756096-60.927693-54.699008 1.419366-100.422144 70.059622-100.422144 70.059622s-56.065126-70.059622-93.440922-70.059622c-37.376717 0-91.077939 70.059622-91.077939 70.059622S105.343488 156.737741 476.742042 119.363584l53.70327-74.714624 51.373056 74.714624C964.889395 142.740992 936.857805 523.431322 936.857805 523.431322z',
        'M533.504 268.288q33.792-41.984 71.68-75.776 32.768-27.648 74.24-50.176t86.528-19.456q63.488 5.12 105.984 30.208t67.584 63.488 34.304 87.04 6.144 99.84-17.92 97.792-36.864 87.04-48.64 74.752-53.248 61.952q-40.96 41.984-85.504 78.336t-84.992 62.464-73.728 41.472-51.712 15.36q-20.48 1.024-52.224-14.336t-69.632-41.472-79.872-61.952-82.944-75.776q-26.624-25.6-57.344-59.392t-57.856-74.24-46.592-87.552-21.504-100.352 11.264-99.84 39.936-83.456 65.536-61.952 88.064-35.328q24.576-5.12 49.152-1.536t48.128 12.288 45.056 22.016 40.96 27.648q45.056 33.792 86.016 80.896z',
    ]; 
    var colors = [
        '#c4332b', '#16B644'
    ]; 

    function renderItem(params, api) {
        var cellPoint = api.coord(api.value(0));
        var cellWidth = params.coordSys.cellWidth;
        var cellHeight = params.coordSys.cellHeight;

        var value = api.value(1);
        var events = value && value.split('|');

        if (isNaN(cellPoint[0]) || isNaN(cellPoint[1])) {
            return;
        }

        var group = {
            type: 'group',
            children: echarts.util.map(layouts[events.length - 1], function (itemLayout, index) {
                return {
                    type: 'path',
                    shape: {
                        pathData: pathes[events[index]],
                        x: -8,
                        y: -8,
                        width: 16,
                        height: 16
                    },
                    position: [
                        cellPoint[0] + echarts.number.linearMap(itemLayout[0], [-0.5, 0.5], [-cellWidth / 2, cellWidth / 2]),
                        cellPoint[1] + echarts.number.linearMap(itemLayout[1], [-0.5, 0.5], [-cellHeight / 2+20, cellHeight / 2])
                    ],
                    style: api.style({
                        fill: colors[events[index]]
                    })
                };
            }) || []
        };

        group.children.push({
            type: 'text',
            style: {
                x: cellPoint[0],
                y: cellPoint[1] - cellHeight / 2 + 15,
                text: echarts.format.formatTime('dd', api.value(0)),
                fill: '#777',
                textFont: api.font({fontSize: 14})
            }
        });
        return group;
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
            text : "管辖客户经理营销业绩趋势图"
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
            smooth: false,
            label : {
                normal : {
                    show : true,
                    position : "top",
                    fontSize : 10,
                    textBorderWidth : 1,
                    color : colorStyle.guidelines
                }
            },
            areaStyle : {
                color : colorStyle.areaStyle
            },
            data : []
        } ]
    }, true);

    // 未完成营销任务
    var myChart_unfinished = echarts.init(document.getElementById("unfinishedDiv"), "crm-homepage1");
    myChart_unfinished.setOption({
        title: {
            text: '营销任务完成情况',
        },
        grid :{
        	left : 5,
        	width:'auto' ,
        	heigth : 'auto'
        },
        xAxis:
            [ {
                type : "category",
                name : "(月)",
                 data: [1,2,3,4,5,6,7,8,9,10,11,12]
            }, {
                type : "category"
            } 
            ],
        yAxis:  [ {
                type : "value",
                name : "%",
                show : true,
                splitLine:{
                    show:false
                }
            } ],
        dataZoom: [
            {
                type: 'inside'
            }
        ],
        series: [
            { 
                type: 'bar',
                barMaxWidth: "15px",
                itemStyle: {
                    normal: {color: 'rgba(0,0,0,0.05)'}
                },
                barGap:'-100%',
                data: [100,100,100,100,100,100,100,100,100,100,100,100],
                animation: false
            },
            {
                type: 'bar',
                barMaxWidth: "15px",
                barCategoryGap : '5%',
                 label: {
            normal : {
                show : true,
                position : "top",
                fontSize : 10,
                textBorderWidth : 1,
                formatter :'{@score}%'
            }
        },
                itemStyle: {
                    normal: {
                        color: new echarts.graphic.LinearGradient(
                            0, 0, 0, 1,
                            [
                                {offset: 0, color: '#83bff6'},
                                {offset: 0.5, color: '#188df0'},
                                {offset: 1, color: '#188df0'}
                            ]
                        )
                    }
                },
                data: [80,30,60,30,50,80,90,70,40,50,44,100]
            }
        ]
    }, true);

    // 管辖客户存款排名
    var myChart_pubDpsChg = echarts.init(document.getElementById("pubDpsChgDiv"), "crm-homepage1");
    myChart_pubDpsChg.setOption({
        title : {
            text : "管辖客户存款排名",
            subtext : "(万元)"
        },
        toolbox: {
        	itemSize : 40,
            feature: {
                myTool1: {
                	show: true,
                    title: '更多',
                    icon: 'image://../../images/crm/more.png',
                    onclick: function (){
                    	var url = "/cus/pubchg/pubchg_d_info";
                    	parent.openPage("pubchgInfo_l", "管辖客户存款排名", url);
                    }
                }
        	},
        right : 15,
        top : -5
        },
        series : [ {
            type : "funnel",
            width : "47%",
            min: 0,
            minSize: '0%',
            maxSize: '100%',
            gap : 2,
            label : fontLabel3,
            data : []
        } ]
    }, true);

    // 管辖客户贷款排名
    var myChart_pubLoanChg = echarts.init(document.getElementById("pubLoanChgDiv"), "crm-homepage2");
    myChart_pubLoanChg.setOption({
        title : {
            text : "管辖客户贷款排名",
            subtext : "(万元)"
        },
        toolbox: {
        	itemSize : 40,
            feature: {
                myTool1: {
                	show: true,
                    title: '更多',
                    icon: 'image://../../images/crm/more.png',
                    onclick: function (){
                    	var url = "/cus/pubchg/pubchg_l_info";
                    	parent.openPage("pubchgInfo_d", "管辖客户贷款排名", url);
                    }
                }
        	},
        right : 15,
        top : -5
        },
        series : [ {
            type : "funnel",
            width : "47%",
            min: 0,
            minSize: '0%',
            maxSize: '100%',
            sort : "ascending",
            gap : 2,
            label : fontLabel3,
            data : []
        } ]
    }, true);

    var myChart_pubvifylist = echarts.init(document.getElementById("PubVifyListPoDiv"), "macarons");

    // 客户经理业绩排名
    var myChart_perfRanking = echarts.init(document.getElementById("perfRankingDiv"), "crm-homepage1");
    myChart_perfRanking.setOption({
        title : {
            text : "客户经理业绩排名"
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
            itemStyle: gradientStyle2,
            data : []
        } ]
    }, true);

    // 异步加载数据
    $.ajax({
        url : "dirmanage_info/dirmanage",
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
                    series : [ {
                         data:[100,100,100,100,100,100,100,100,100,100,100,100]
                    }, {
                        data : result.data.unfinished
                    } ]
                }); 
                // 客户存款变动排名
                var pubDpsChg = result.data.pubDpsChg;
                if (pubDpsChg.length > 0) {
                    myChart_pubDpsChg.setOption({
                        series : [ {
                            max : pubDpsChg[0].value,
                            data : pubDpsChg
                        } ]
                    });
                }
                // 客户贷款变动排名
                var pubLoanChg = result.data.pubLoanChg;
                if (pubLoanChg.length > 0) {
                    myChart_pubLoanChg.setOption({
                        series : [ {
                            max : pubLoanChg[0].value,
                            data : result.data.pubLoanChg
                        } ]
                    });
                }
                // 业绩排名
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
                
                myChart_pubvifylist.setOption({
                	tooltip: {
                    },
                    calendar: [{
                        left: '20',
                        top: '60',
                        cellSize: [55, 42],
                        yearLabel: {show: false},
                        orient: 'vertical',
                        dayLabel: {
                            firstDay: 1,
                            nameMap:['周日', '周一', '周二', '周三', '周四', '周五', '周六']
                        },
                        monthLabel: {
                            show: false
                        },
                        range : result.data.PubVifyListTabYear
                    }],
                    series: [{
                    	type: 'custom',
                        coordinateSystem: 'calendar',
                        renderItem : renderItem,
                        dimensions: [null, {type: 'ordinal'}],
                        data: result.data.PubVifyListTab	
                    }]
                }, true);
                
                // 公告栏
                var msg = result.data.message;
                if (msg.length > 0) {
                    var $msgheader = $(".crm-message-header");
                    var $msgbody = $(".crm-message-body");
                    for (var i_msg = 0; i_msg < 3; i_msg++) {
                    	$($msgheader[i_msg]).empty().append(msg[i_msg].msgTitle);
                        $($msgbody[i_msg]).empty().append(msg[i_msg].msgContent.slice(0, 150) + "…");
                    }
                }
            }
        },
        error : function(errorMsg) {
            WebUtils.alert("图表请求数据失败!");
        }
    });
    
    $(function () {
        window.addEventListener("resize", function () {
            myChart_performance.resize();
            myChart_unfinished.resize();
            myChart_pubDpsChg.resize();
            myChart_perfRanking.resize();
            myChart_pubLoanChg.resize();
        });

        $("#msgMore").on("click", function(ev) {
            parent.openPage("pubmsg", "消息详情页面", "/cus/pubmsg/pubpoitmsg_info");
        });
    });
</script>
</html>