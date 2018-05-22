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
<link rel="stylesheet" href="../css/crm.css">

<style type="text/css">
.row {
    margin-left: 0px;
    margin-right: 0px;
}
.panel {
    margin-bottom: 15px;
}
.xe-header {
    margin-bottom: 25px;
}
.xe-widget.xe-status-update {
    margin-bottom: 0px;
    padding-top: 0px;
    padding-bottom: 0px;
}
.crm-left-col {
    padding-left: 0px;
}
.crm-right-col {
    padding-right: 0px;
}
.crm-form-group-label {
    width: 20%;
}
.crm-col-sm-10 {
    width: 80%;
}
.ownstr-col-height {
    height: 460px;
}
.ownstr-panel-height {
    height: 400px;
}
.keyman-col-height {
    height: 220px;
}
.keyman-inline {
    display: inline-block;
}
.trade-col-height {
    height: 440px;
}
.trade-panel-height {
    height: 380px;
}
.rskm-col-height {
    height: 500px;
}
.rskm-panel-height {
    height: 440px;
}
</style>
</head>

<body class="page-body">
  <div class="page-container">
    <div class="main-content">
      <div class="row crm-top-row">
        <div class="col-sm-6 crm-left-col crm-less-col">
          <div class="row">
            <div class="panel panel-default collapsed">
              <div class="form-group">
                <h4>基本信息</h4>
              </div>
              <form class="form-horizontal">
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">客户名称</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="custName" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">注册资金</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="regCapital" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">联系电话</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="officeTel" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">所属行业</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="industryType" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">公司规模</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="enterpriseScope" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">上市标识</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="listingcorpFlag" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">官网地址</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="webAddr" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">公司地址</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="companyAddr" readonly>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <div class="row">
            <div class="chart-item-bg ownstr-col-height">
              <div class="chart-label">
                <div id="ownstrDiv" class="crm-left-echarts-div ownstr-panel-height"></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="chart-item-bg keyman-col-height">
              <div class="chart-label">
                <div class="xe-widget xe-status-update crm-left-echarts-div">
                  <div class="xe-header">
                    <h4>关键人信息</h4>
                  </div>
                  <div class="xe-body">
                    <div class="row">
                      <div class="col-sm-1">
                        <div class="xe-nav">
                          <a href="#" class="xe-prev">
                            <i class="fa-angle-left"></i>
                          </a>
                        </div>
                      </div>
                      <div class="col-sm-10 crm-col-sm-10">
                        <ul id="priUl" class="list-unstyled">
                          <li class='active'><div class='keyman-inline'><img src='../images/crm/female.png'><p class='text-center'>张晓蕾</p></div><div class='keyman-inline'><img src='../images/crm/male.png'><p class='text-center'>方正</p></div><div class='keyman-inline'><img src='../images/crm/female.png'><p class='text-center'>谢雯</p></div><div class='keyman-inline'><img src='../images/crm/male.png'><p class='text-center'>陈铭侨</p></div><div class='keyman-inline'><img src='../images/crm/male.png'><p class='text-center'>詹伟坚</p></div></li><li><div class='keyman-inline'><img src='../images/crm/female.png'><p class='text-center'>侯绮雯</p></div><div class='keyman-inline'><img src='../images/crm/male.png'><p class='text-center'>陈志鑫</p></div><div class='keyman-inline'><img src='../images/crm/female.png'><p class='text-center'>黎达诗</p></div></li>
                        </ul>
                      </div>
                      <div class="col-sm-1">
                        <div class="xe-nav">
                          <a href="#" class="xe-next">
                            <i class="fa-angle-right"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="chart-item-bg trade-col-height">
              <div class="chart-label">
                <div id="tradeDiv" class="crm-left-echarts-div trade-panel-height"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 crm-right-col crm-more-col">
          <div class="row">
            <div class="chart-item-bg rskm-col-height">
              <div class="chart-label">
                <div id="rskmDiv" class="crm-right-echarts-div rskm-panel-height"></div>
              </div>
            </div>
          </div>
          <div class="row">
          </div>
          <div class="row">
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
<script src="../assets/js/xenon-widgets.js"></script>
<script src="../assets/js/moment.min.js"></script>

<script src="../assets/js/datepicker/bootstrap-datepicker.js"></script>
<script src="../assets/js/datatables/js/jquery.dataTables.min.js"></script>
<script src="../assets/js/datatables/dataTables.bootstrap.js"></script>
<script src="../assets/js/datatables/tabletools/dataTables.tableTools.min.js"></script>
<script src="../assets/js/select2/select2.min.js"></script>
<script src="../assets/js/selectboxit/jquery.selectBoxIt.min.js"></script>

<script src="../assets/js/echarts/echarts.min.js"></script>
<script src="../assets/js/echarts/crm-homepage1.js"></script>

<script src="../js/WebUtils.js"></script>

<jsp:include page="/WEB-INF/template/settings.jsp"></jsp:include>

<script type="text/javascript">
    var colorStyle = {
        childrenLabelColor: "#333333"
    }

    var gradientStyle2 = {
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

    var gradientStyle4 = {
        normal: {
            color: new echarts.graphic.LinearGradient(
                0, 0, 0, 1,
                [
                    {offset: 0, color: "#ED77FF"},
                    {offset: 1, color: "#8689F7"}
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

    // 股权结构
    var myChart_ownstr = echarts.init(document.getElementById("ownstrDiv"), "crm-homepage1");
    myChart_ownstr.setOption({
        title: {
            text: "股权结构"
        },
        visualMap: {
            show: false,
            min: 0,
            max: 100,
            inRange: {
                colorLightness: [0, 1]
            }
        },
        series : [
            {
                name:"访问来源",
                type:"pie",
                radius : "50%",
                center: ["47%", "50%"],
                roseType: "radius",
                label: {
                    normal: {
                        fontSize : 10,
                        textStyle: {
                            color: "#333333"
                        }
                    }
                },
                labelLine: {
                    normal: {
                        lineStyle: {
                            color: "#333333"
                        },
                        length: 10,
                        length2: 20
                    }
                },
                itemStyle: {
                    normal: {
                        color: "#31C0F5",
                        shadowBlur: 200,
                        shadowColor: "rgba(0, 0, 0, 0.2)"
                    }
                },
                animationType: "scale",
                animationEasing: "elasticOut",
                animationDelay: function (idx) {
                    return Math.random() * 200;
                },
                data: []
            }
        ]
    }, true);

    // 近三月交易动态
    var myChart_trade = echarts.init(document.getElementById("tradeDiv"), "crm-homepage1");
    myChart_trade.setOption({
        title : {
            text : "近三月交易动态",
            top : "-1%"
        },
        legend: {
            data: ["存款", "贷款"]
        },
        xAxis : [ {
            type : "category",
            splitLine : {
                show : false
            },
            data : []
        } ],
        yAxis : [ {
            type : "value",
            name : "(万元)",
            position : "left",
            splitLine : {
                show : false
            }
        } ],
        series : [ {
            name : "存款",
            type : "bar",
            barMaxWidth: "15px",
            itemStyle: gradientStyle2,
            data : []
        }, {
            name : "贷款",
            type : "bar",
            barMaxWidth: "15px",
            itemStyle: gradientStyle4,
            data : []
        } ]
    }, true);

    // 风险管理
    var data_rskm = [{
        name: "",
        itemStyle: {
            color: "#3BB8FF"
        },
        label: {
            rotate: "tangential"
        },
        children: [{
            name: "裁\n判\n文\n书\n \n \n \n \n",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#3BB8FF"
            }
        }]
    }, {
        name: "",
        itemStyle: {
            color: "#3BA5FF"
        },
        children: [{
            name: "被\n执\n行\n人\n \n \n \n \n",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#3BA5FF"
            }
        }]
    }, {
        name: "",
        itemStyle: {
            color: "#3B90FF"
        },
        children: [{
            name: "开\n庭\n公\n告\n \n \n \n \n",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#3B90FF"
            }
        }]
    }, {
        name: "",
        itemStyle: {
            color: "#8689F7"
        },
        children: [{
            name: " \n \n \n \n \n \n法\n院\n公\n告\n",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#8689F7"
            }
        }]
    }, {
        name: "",
        itemStyle: {
            color: "#FF77BD"
        },
        children: [{
            name: " \n \n \n \n \n失\n信\n信\n息",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#FF77BD"
            }
        }]
    }, {
        name: "",
        itemStyle: {
            color: "#F086F7"
        },
        children: [{
            name: " \n \n \n \n \n动\n产\n抵\n押",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#F086F7"
            }
        }]
    }, {
        name: "",
        itemStyle: {
            color: "#AB86F7"
        },
        children: [{
            name: " \n \n \n \n \n股\n权\n出\n质",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#AB86F7"
            }
        }]
    }, {
        name: "",
        itemStyle: {
            color: "#31C0F5"
        },
        children: [{
            name: " \n \n \n \n \n经\n营\n异\n常",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#31C0F5"
            }
        }]
    }, {
        name: "",
        itemStyle: {
            color: "#31D2F5"
        },
        children: [{
            name: "行\n政\n处\n罚\n \n \n \n \n",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#31D2F5"
            }
        }]
    }, {
        name: "",
        itemStyle: {
            color: "#3BF3FF"
        },
        children: [{
            name: "立\n案\n信\n息\n \n \n \n \n",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#3BF3FF"
            }
        }]
    }, {
        name: "",
        itemStyle: {
            color: "#3BE1FF"
        },
        children: [{
            name: "税\n务\n信\n 息\n \n \n \n \n",
            label: {
                color: colorStyle.childrenLabelColor,
                rotate: "tangential"
            },
            value: 1,
            itemStyle: {
                color: "#3BE1FF"
            }
        }]
    }];
    var myChart_rskm = echarts.init(document.getElementById("rskmDiv"), "crm-homepage1");
    myChart_rskm.setOption({
        title: {
            text: "风险管理"
        },
        series: {
            type: "sunburst",
            nodeClick : false,
            center: ["50%", "53%"],
            levels: [{}, {
                r0: "25%",
                r: "60%"
            }, {
                r0: "60%",
                r: "60%"
            }],
            data: data_rskm
        }
    }, true);

    // 异步加载数据
    $.ajax({
        url : "custbase_view/custBaseView",
        type : "post",
        dataType : "json",
        data : {
            id : "${id}"
        },
        success : function(result) {
            if (WebUtils.isSuccess(result)) {
                // 基本信息
                if (!result.custBase) {
                    var custBase = result.data.custBase;
                    for (var index in custBase) {
                        $("#" + index).val(custBase[index]);
                    }
                }
                // 股权结构
                myChart_ownstr.setOption({
                    visualMap: {
                        max: result.data.ownstrMax
                    },
                    series : [ {
                        data : result.data.ownstr.sort(function (a, b) { return a.value - b.value; })
                    } ]
                });
                // 关键人信息
//                 $("#priUl").empty().append("<li class='active'><div class='keyman-inline'><img src='../images/crm/female.png'><p class='text-center'>张晓蕾</p></div><div class='keyman-inline'><img src='../images/crm/male.png'><p class='text-center'>方正</p></div><div class='keyman-inline'><img src='../images/crm/female.png'><p class='text-center'>谢雯</p></div><div class='keyman-inline'><img src='../images/crm/male.png'><p class='text-center'>陈铭侨</p></div><div class='keyman-inline'><img src='../images/crm/male.png'><p class='text-center'>詹伟坚</p></div></li><li><div class='keyman-inline'><img src='../images/crm/female.png'><p class='text-center'>侯绮雯</p></div><div class='keyman-inline'><img src='../images/crm/male.png'><p class='text-center'>陈志鑫</p></div><div class='keyman-inline'><img src='../images/crm/female.png'><p class='text-center'>黎达诗</p></div></li>");
                // 近三月交易动态
                myChart_trade.setOption({
                    xAxis : [ {
                        data : result.data.trade.xData
                    } ],
                    series : [ {
                        data : result.data.trade.dps
                    }, {
                        data : result.data.trade.loan
                    } ]
                });
                // 风险管理
                var rskm = result.data.rskm;
                for (var i_rskm = 0; i_rskm < 11; i_rskm++) {
                    data_rskm[i_rskm].name = rskm[i_rskm];
                }
                myChart_rskm.setOption({
                    series : [ {
                        data : data_rskm
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