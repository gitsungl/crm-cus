<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="s" uri="/auth"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>客户画像</title>

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
.panel-product {
    margin-bottom: 0px;
    padding: 0px;
}
.page-body .main-content .cbp_tmtimeline:before {
    background: #afdcf8;
}
.page-body .main-content .cbp_tmtimeline>li .cbp_tmlabel {
    padding: 3px;
}
.cbp_tmtimeline:before {
    left: 43.5%;
}
.cbp_tmtimeline > li .cbp_tmtime {
    width: 50%;
}
.cbp_tmtimeline > li .cbp_tmicon {
    margin-left: 20%;
}
.cbp_tmtimeline > li .cbp_tmlabel {
    margin-left: 50%;
}
.page-body .main-content .cbp_tmtimeline > li .cbp_tmlabel h2 {
    padding-top: 5px;
}
.keyman-col-height {
    height: 240px;
}
.keyman-inline {
    display: inline-block;
    padding-left: 8px;
    padding-right: 8px;
}
#tradeDiv {
    height: 400px;
}
#ownstrDiv {
    height: 420px;
}
#rskmDiv {
    height: 347px;
}
#custTagsDiv, #induTagsDiv {
    height: 280px;
}
#relacorpDiv {
    height: 300px;
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
              <div class="form-group" style="margin-bottom: 45px;">
                <div class="col-sm-10">
                  <h4>基本信息</h4>
                </div>
                <div class="col-sm-2 text-center">
                  <h4 class="crm-more-click-div">
                    <a id="baseinfoMore" href="javascripe:void(0);">更多&gt;&gt;</a>
                  </h4>
                </div>
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
                <div class="form-group" style="margin-bottom: 10px;">
                  <label class="control-label col-sm-2 crm-form-group-label">公司地址</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="companyAddr" readonly>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <div class="row">
            <div class="chart-item-bg">
              <div class="chart-label">
                <div id="ownstrDiv"></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="chart-item-bg">
              <div class="chart-label">
                <div class="xe-widget xe-status-update">
                  <div class="xe-header">
                    <h4>关键人信息</h4>
                  </div>
                  <div class="xe-body">
                    <div class="row">
                      <div class="col-sm-1 text-right crm-center-vertical">
                        <div class="xe-nav">
                          <a href="javascripe:void(0);" class="xe-prev">
                            <i class="fa-angle-left"></i>
                          </a>
                        </div>
                      </div>
                      <div class="col-sm-10 text-center">
                        <ul id="priUl" class="list-unstyled">
                        </ul>
                      </div>
                      <div class="col-sm-1 text-left crm-center-vertical">
                        <div class="xe-nav">
                          <a href="javascripe:void(0);" class="xe-next">
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
            <div class="chart-item-bg">
              <div class="chart-label" style="padding-top: 10px;">
                <div class="row text-right">
                  <div class="crm-more-click-div">
                    <a id="tradeMore" href="javascripe:void(0);">更多&gt;&gt;</a>
                  </div>
                </div>
                <div class="row">
                  <div id="tradeDiv"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 crm-right-col crm-more-col">
          <div class="row">
            <div class="chart-item-bg">
              <div class="chart-label">
                <div id="rskmDiv"></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6" style="padding-left: 0px;">
              <div class="chart-item-bg tags-col-height">
                <div class="chart-label">
                  <div id="custTagsDiv"></div>
                </div>
              </div>
            </div>
            <div class="col-sm-6" style="padding-right: 0px;">
              <div class="chart-item-bg tags-col-height">
                <div class="chart-label">
                  <div id="induTagsDiv"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="chart-item-bg">
              <div class="chart-label">
                <div id="relacorpDiv"></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="chart-item-bg">
              <div class="chart-label">
                <div class="row">
                  <div class="col-sm-12">
                    <div class="panel panel-default collapsed panel-product">
                      <h4 style="font-size: 20px;">签约业务</h4>
                    </div>
                  </div>
                  <div class="col-sm-12">
                    <ul class="cbp_tmtimeline">
                      <li>
                        <time class="cbp_tmtime"><span>03:45 PM</span> <span>Today</span></time>
                        <div class="cbp_tmicon timeline-bg-success">
                          <i class="fa-paper-plane-o"></i>
                        </div>
                        <div class="cbp_tmlabel">
                          <h2>对公短信通</h2>
                        </div>
                      </li>
                      <li>
                        <time class="cbp_tmtime"><span>2018-05-27</span> <span>Yesterday</span></time>
                        <div class="cbp_tmicon timeline-bg-primary">
                          <i class="fa-calendar"></i>
                        </div>
                        <div class="cbp_tmlabel">
                          <h2>企业网银</h2>
                        </div>
                      </li>
                      <li>
                        <time class="cbp_tmtime"><span>2018-05-18</span> <span>Two weeks ago</span></time>
                        <div class="cbp_tmicon timeline-bg-info">
                          <i class="fa-location-arrow"></i>
                        </div>
                        <div class="cbp_tmlabel">
                          <h2>现金管理平台</h2>
                        </div>
                      </li>
                      <li>
                        <time class="cbp_tmtime"><span>2018-05-15</span> <span>Two weeks ago</span></time>
                        <div class="cbp_tmicon timeline-bg-warning">
                          <i class="fa-camera-retro"></i>
                        </div>
                        <div class="cbp_tmlabel">
                          <h2>票据池</h2>
                        </div>
                      </li>
                      <li>
                        <time class="cbp_tmtime"><span>2018-05-14</span> <span>Two weeks ago</span></time>
                        <div class="cbp_tmicon timeline-bg-info">
                          <i class="fa-location-arrow"></i>
                        </div>
                        <div class="cbp_tmlabel">
                          <h2>结算卡</h2>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="baseinfoContentDiv">
    <div class="modal-dialog" style="width: 60%;">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body panel-body-">
          <div class="panel panel-default collapsed">
            <div id="baseinfoContentData">
              <form class="form-horizontal">
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">客户号</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-custNo" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">客户简称</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-shortName" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">客户全称</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-custName" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">客户英文名称</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-enName" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">企业曾用名</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-formerCustName" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">联系电话</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-officeTel" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">邮箱地址</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-email" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">传真电话</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-fax" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">官网地址</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-webAddr" readonly>
                  </div>
                </div>
                <div class="form-group" style="margin-bottom: 10px;">
                  <label class="control-label col-sm-2 crm-form-group-label">公司地址</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-companyAddr" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">所属行业</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-industryType" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">公司规模</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-enterpriseScope" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">年营业额</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-revenue" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">经营范围</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-businessScope" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">公司介绍</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-companyDesc" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">注册资金币种</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-currency" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">注册资金</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-regCapital" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">成立日期</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-setupDate" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">法定代表人</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-legalPerson" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">企业登记注册号</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-regId" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">纳税人识别号</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-identifyNum" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">营业执照</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-busLicense" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">组织机构代码</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-orgCertNo" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">统一社会信用代码</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-uniformCreditNo" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">营业期限开始时间</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-startDate" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">营业期限结束时间</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-endDate" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">企业类型</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-enterpriseType" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">经验状态</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-operateStatus" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">核准日期</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-checkDate" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">上市公司标识</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-listingcorpFlag" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">登记机关</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-regOrg" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">登记状态</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-status" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2 crm-form-group-label">更新时间</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="modal-updateTime" readonly>
                  </div>
                </div>
              </form>
            </div>
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
<script src="../../assets/js/xenon-widgets.js"></script>
<script src="../../assets/js/moment.min.js"></script>

<script src="../../assets/js/datepicker/bootstrap-datepicker.js"></script>
<script src="../../assets/js/datatables/js/jquery.dataTables.min.js"></script>
<script src="../../assets/js/datatables/dataTables.bootstrap.js"></script>
<script src="../../assets/js/datatables/tabletools/dataTables.tableTools.min.js"></script>
<script src="../../assets/js/select2/select2.min.js"></script>
<script src="../../assets/js/selectboxit/jquery.selectBoxIt.min.js"></script>

<script src="../../assets/js/echarts/echarts.min.js"></script>
<script src="../../assets/js/echarts/crm-homepage1.js"></script>

<script src="../../js/WebUtils.js"></script>
<script src="../../js/crm-widgets-switch.js"></script>

<jsp:include page="/WEB-INF/template/settings.jsp"></jsp:include>

<script type="text/javascript">
    var colorStyle = {
        childrenLabelColor: "#333333",
        upperColor : "#8689F7",
        lowerColor : "#51B3FF"
    };

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

    // 行内客户标签
    var myChart_custTags = echarts.init(document.getElementById("custTagsDiv"), "crm-homepage1");
    myChart_custTags.setOption({
        title: {
            text: '行内客户标签'
        },
        xAxis: {
            show: false
        },
        yAxis: {
            show: false,
            scale: true
        },
        series: [{
            type: 'scatter',
            symbolSize: 60,
            label: {
                show: true
            },
            itemStyle: {
                normal: {
                    shadowBlur: 10,
                    shadowColor: 'rgba(25, 100, 150, 0.5)',
                    shadowOffsetY: 3
                }
            },
            data: []
        }]
    }, true);

    // 行业标签
    var myChart_induTags = echarts.init(document.getElementById("induTagsDiv"), "crm-homepage1");
    myChart_induTags.setOption({
        title: {
            text: '行业标签'
        },
        xAxis: {
            show: false
        },
        yAxis: {
            show: false,
            scale: true
        },
        series: [{
            type: 'scatter',
            symbolSize: 60,
            label: {
                show: true
            },
            itemStyle: {
                normal: {
                    shadowBlur: 10,
                    shadowColor: 'rgba(25, 100, 150, 0.5)',
                    shadowOffsetY: 3
                }
            },
            data: []
        }]
    }, true);

    // 企业关系圈
    var myChart_relacorp = echarts.init(document.getElementById("relacorpDiv"), "crm-homepage1");
    myChart_relacorp.setOption({
        title : {
            text : "企业关系圈"
        },
        series : [ {
            type: 'graph',
            symbolSize: 50,
            label: {
                normal: {
                    show: true
                }
            },
            edgeSymbol: ['circle', 'arrow'],
            edgeSymbolSize: [0, 5],
            edgeLabel: {
                normal: {
                    textStyle: {
                        fontSize: 12
                    }
                }
            },
            data: [],
            links: []
        } ]
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
                        $("#modal-" + index).val(custBase[index]);
                    }
                    $("#baseinfoMore").on("click", function() {
                        jQuery('#baseinfoContentDiv').modal('show', {backdrop : 'static', title : "基本信息-" + custBase.shortName});
                    });
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
                $("#priUl").empty().append(result.data.pri);
                CrmWidgets.setupWidgets();
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
                $("#tradeMore").on("click", function(ev) {
                    parent.openPage("custbase_info", "客户管理", "/cus/custbase/custbase_info");
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
                // 行内客户标签
                myChart_custTags.setOption({
                    series : [ {
                        data : result.data.custTags
                    } ]
                });
                // 行业标签
                myChart_induTags.setOption({
                    series : [ {
                        data : result.data.induTags
                    } ]
                });
                // 企业关系圈
                var relacorp = result.data.relacorp;
                for (var i_relacorpData = 0, relacorpDataLength = relacorp.data.length; i_relacorpData < relacorpDataLength; i_relacorpData++) {
                    relacorp.data[i_relacorpData].itemStyle = relacorp.data[i_relacorpData].positionFlag === "u" ? { color : colorStyle.upperColor } : { color : colorStyle.lowerColor };
                }
                for (var i_relacorpLinks = 0, relacorpLinksLength = relacorp.links.length; i_relacorpLinks < relacorpLinksLength; i_relacorpLinks++) {
                    if (relacorp.links[i_relacorpLinks].params && relacorp.links[i_relacorpLinks].params.length > 0) {
                        relacorp.links[i_relacorpLinks].label = { show : true, formatter : relacorp.links[i_relacorpLinks].params };
                    }
                }
                myChart_relacorp.setOption({
                    series : [ {
                        data: relacorp.data,
                        links: relacorp.links
                    } ]
                });
                // 签约业务
                $("#productMore").on("click", function(ev) {
                    parent.openPage("custbase_info", "客户管理", "/cus/custbase/custbase_info");
                });
            }
        },
        error : function(errorMsg) {
            WebUtils.alert("图表请求数据失败!");
        }
    });

    $('#baseinfoContentDiv').on('show.bs.modal', function (event) {
        //设置详细对话框内容
        var button = $(event.relatedTarget);
        var modal = $(this);
        modal.find('.modal-title').text(button.attr('title'));
        modal.find('form').attr("action", button.attr('action'));
    });

    $(function () {
        window.addEventListener("resize", function () {
            myChart_ownstr.resize();
            myChart_trade.resize();
            myChart_rskm.resize();
            myChart_relacorp.resize();
        });
    });
</script>
</html>