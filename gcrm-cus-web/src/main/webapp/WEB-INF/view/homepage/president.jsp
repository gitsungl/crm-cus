<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib prefix="s" uri="/auth"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>行长</title>

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

.chart-item-bg .chart-label {
	position:relative;
}

 
.testdiv {
	height : 613px;
	width :500px;
}
.crm-width-right { 
 	width : 642px; 
 } 

.crm-width-left { 
 	width : 465px; 
 } 

</style>


</head>

<body class="page-body">
	<div class="page-container">
		<div class="main-content">



			<div class="row">
				<div class="col-sm-6 crm-left-col crm-less-col">
					<div class="chart-item-bg">
						<div class="chart-label">
							<div class="row">
								<div class="col-sm-12 testdiv">
									<div
										style="float: left; width: 170px; padding-left: 35px; padding-top: 12px; font-size: 16px">营销活动发起流程</div>
								</div>
								<div id="unfinishedDiv" class="col-sm-12">填图</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 crm-right-col crm-more-col">
					<div class="row">
						<div class="col-sm-12 crm-left-col crm-right-col">
							<div class="crm-echarts-col-height chart-item-bg">
								<div class="chart-label crm-performanceDiv">
									<div id="performanceDiv" class="crm-echarts-panel-height"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 crm-left-col">
							<div class="chart-item-bg">
								<div class="chart-label">
									<div id="pubDpsChgDiv" class="crm-echarts-panel-height"></div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 crm-right-col">
							<div class="chart-item-bg">
								<div class="chart-label">

									<div id="pubLoanChgDiv" class="crm-echarts-panel-height"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>



			<div class="footRow">



				<div class="col-sm-6 crm-left-col crm-less-col ">
					<div class="chart-item-bg crm-width-left">
						<div class="chart-label">
							<div class="row">
								<div class="col-sm-12">
									<div id="perfRankingDiv" class="crm-echarts-panel-height"></div>
								</div>
							</div>
						</div>
					</div>
				</div>



 				<div class="col-sm-6 crm-right-col crm-more-col ">
					<div class="chart-item-bg crm-width-right">
						<div class="row">
							<div class="col-sm-12 crm-message-col">
								<div class="panel panel-default collapsed">
									<div class="row" style="margin-bottom: 2px;">
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
											<div style="hight: 5px; background: linear-gradient(red, blue);"></div>
											<div class="xe-header crm-message-header"></div>
											<div>&nbsp;</div>
											<div class="xe-body crm-message-body" style="height: 160px;"></div>
											<div class="xe-footer">
												<a href="#"> <i class="fa-retweet"></i>了解更多&gt;
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="chart-label"
										style="padding: 0px; padding-left: 10px; padding-right: 10px;">
										<div class="xe-widget xe-status-update crm-widget">
											<div
												style="hight: 5px; background: linear-gradient(red, blue);"></div>
											<div class="xe-header crm-message-header"></div>
											<div>&nbsp;</div>
											<div class="xe-body crm-message-body" style="height: 160px;"></div>
											<div class="xe-footer">
												<a href="#"> <i class="fa-retweet"></i>了解更多&gt;
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="chart-label"
										style="padding: 0px; padding-left: 10px; padding-right: 10px;">
										<div class="xe-widget xe-status-update crm-widget">
											<div
												style="hight: 5px; background: linear-gradient(red, blue);"></div>
											<div class="xe-header crm-message-header"></div>
											<div>&nbsp;</div>
											<div class="xe-body crm-message-body" style="height: 160px;"></div>
											<div class="xe-footer">
												<a href="#"> <i class="fa-retweet"></i>了解更多&gt;
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
<%-- <script type="text/javascript" src= "../assets/json/beijing.js"></script>   --%>
<script src="https://img.hcharts.cn/highmaps/highmaps.js"></script>
<script src="https://data.jianshukeji.com/geochina/shanghai.js"></script>

<jsp:include page="/WEB-INF/template/settings.jsp"></jsp:include>

<script type="text/javascript">
//     var noIcons = {
//      "no1" : "../images/crm/no1.png",
//      "no2" : "../images/crm/no2.png",
//      "no3" : "../images/crm/no3.png",
//      "nom" : "../images/crm/nom.png"
//     };

// 随机数据
// var data = [{"name":"黄浦区","value":21},{"name":"徐汇区","value":62},{"name":"长宁区","value":47},{"name":"静安区","value":48},{"name":"普陀区","value":42},{"name":"虹口区","value":96},{"name":"杨浦区","value":69},{"name":"闵行区","value":49},{"name":"宝山区","value":97},{"name":"嘉定区","value":32},{"name":"浦东新区","value":58},{"name":"金山区","value":18},{"name":"松江区","value":68},{"name":"青浦区","value":48},{"name":"奉贤区","value":78},{"name":"崇明区","value":50}];
// // // 初始化图表
// var map = new Highcharts.Map('unfinishedDiv', {
//   title: {
//     text: '上海市'
//   },
//   colorAxis: {
//     min: 0,
//     minColor: 'rgb(255,255,255)',
//     maxColor: '#006cee'
//   },
//   series: [{
//     data: data,
//     name: '随机数据',
//     mapData: Highcharts.maps['cn/shanghai'],
//     joinBy: 'name' // 根据 name 属性进行关联
//   }]
// });





      
	
// 	$.get('../assets/json/shanghai.json', function (geoJson) {
// 	var myChart = echarts.init(document
// 			.getElementById("unfinishedDiv"), "macarons");
// 		  myChart.hideLoading();

// 		    echarts.registerMap('shanghai', geoJson);

// 		    myChart.setOption(option = {
// 		        title: {
// 		            text: '香港18区人口密度 （2011）',
// 		            subtext: '人口密度数据来自Wikipedia',
// 		            sublink: 'http://zh.wikipedia.org/wiki/%E9%A6%99%E6%B8%AF%E8%A1%8C%E6%94%BF%E5%8D%80%E5%8A%83#cite_note-12'
// 		        },
// 		        tooltip: {
// 		            trigger: 'item',
// 		            formatter: '{b}<br/>{c} (p / km2)'
// 		        },
// 		        toolbox: {
// 		            show: true,
// 		            orient: 'vertical',
// 		            left: 'right',
// 		            top: 'center',
// 		            feature: {
// 		                dataView: {readOnly: false},
// 		                restore: {},
// 		                saveAsImage: {}
// 		            }
// 		        },
// 		        visualMap: {
// 		            min: 800,
// 		            max: 50000,
// 		            text:['High','Low'],
// 		            realtime: false,
// 		            calculable: true,
// 		            inRange: {
// 		                color: ['lightskyblue','yellow', 'orangered']
// 		            }
// 		        },
// 		        series: [
// 		            {
// 		                name: '香港18区人口密度',
// 		                type: 'map',
// 		                mapType: 'HK', // 自定义扩展图表类型
// 		                itemStyle:{
// 		                    normal:{label:{show:true}},
// 		                    emphasis:{label:{show:true}}
// 		                },
//                     data: [  

// 				{
// 					"name" : "黄浦区",
// 					"value" : 21
// 				}, {
// 					"name" : "徐汇区",
// 					"value" : 62
// 				}, {
// 					"name" : "长宁区",
// 					"value" : 47
// 				}, {
// 					"name" : "静安区",
// 					"value" : 48
// 				}, {
// 					"name" : "普陀区",
// 					"value" : 42
// 				}, {
// 					"name" : "虹口区",
// 					"value" : 96
// 				}, {
// 					"name" : "杨浦区",
// 					"value" : 69
// 				}, {
// 					"name" : "闵行区",
// 					"value" : 49
// 				}, {
// 					"name" : "宝山区",
// 					"value" : 97
// 				}, {
// 					"name" : "嘉定区",
// 					"value" : 32
// 				}, {
// 					"name" : "浦东新区",
// 					"value" : 58
// 				}, {
// 					"name" : "金山区",
// 					"value" : 18
// 				}, {
// 					"name" : "松江区",
// 					"value" : 68
// 				}, {
// 					"name" : "青浦区",
// 					"value" : 48
// 				}, {
// 					"name" : "奉贤区",
// 					"value" : 78
// 				}, {
// 					"name" : "崇明区",
// 					"value" : 50
// 				}

//-----
				//                            {name:'东城区', value: 1800},  
				//                            {name:'西城区', value: 1700},  
				//                            {name:'朝阳区', value: 1600},  
				//                            {name:'丰台区', value: 1400},  
				//                            {name:'石景山区', value: 1200},  
				//                            {name:'海淀区', value: 1000},  
				//                            {name:'门头沟区', value: 800},  
				//                            {name:'房山区', value: 600},  
				//                            {name:'通州区', value: 400},  
				//                            {name:'顺义区', value: 200},  
				//                            {name:'昌平区', value: 100},  
				//                            {name:'大兴区', value: 300},  
				//                            {name:'怀柔区', value: 500},  
				//                            {name:'平谷区', value: 700},  
				//                            {name:'密云县', value: 900},  
				//                            {name:'延庆县', value: 1100}, 
				//                            {name: '宣武区', value: 2180.98},
				//                            {name: '崇文区', value: 9172.94} 

// 				]
// 		            }
// 		            ]
// 		        });
// 		    });
	
	
	
	
// 	======
	
	
// 	$(function(){  
  
//           var mapChart;  
//       var option;  
      
//       $.get('../assets/json/shanghai.json', function (beijingJson) {  
//             echarts.registerMap('北京', beijingJson);   
//             mapChart = echarts.init(document.getElementById('unfinishedDiv'));   
//             option = {  
//                 title:{  
//                     text: '北京市通州区各镇分布图',  
//                     left: 'center'  
//                 },  
//                 tooltip: {  
//                     trigger: 'item',  
//                     formatter: '{b}<br/>{c} (个)'  
//                 },  
//                 toolbox: {  
//                    show: true,  
//                    orient: 'vertical',  
//                    left: 'right',  
//                    top: 'center',  
//                    feature: {  
//                        dataView: {readOnly: false},  
//                        restore: {},  
//                        saveAsImage: {}  
//                    }  
//                 },  
//                 visualMap: {  
//                         min: 0,  
//                         max: 2000,  
//                         text:['高','低'],  
//                         realtime: false,  
//                         calculable: true,  
//                         inRange: {  
//                             color: ['lightskyblue','yellow', 'orangered']  
//                         }  
//                 },  
//                 series:[  
//                     {  
//                     name: '通州区各镇安装机井统计图',  
//                         type: 'map',  
//                         map: '北京', // 自定义扩展图表类型  
//                         aspectScale: 1.0, //地图长宽比. default: 0.75  
//                         zoom: 1.1, //控制地图的zoom，动手自己更改下 看看什么效果吧  
//                         roam: true,  
//                         itemStyle:{  
//                             normal:{label:{show:true}},  
//                             emphasis:{label:{show:true}}  
//                         }  
//                     }  
//                 ]  
//             }  
//             mapChart.setOption(option);  
              
//       });  
       
      
// }) 
	
	
	
	
	
	var colorStyle = {
		blackStyle : "#666666",
		guidelines : "#BDBDBD",
		areaStyle : "#DDF1FF"
	}

	var gradientStyle = {
		normal : {
			color : new echarts.graphic.LinearGradient(0, 0, 0, 1, [ {
				offset : 0,
				color : "#35D6FF"
			}, {
				offset : 1,
				color : "#3B90FF"
			} ])
		}
	};

	var gradientStyle2 = {
		normal : {
			color : new echarts.graphic.LinearGradient(1, 0, 0, 0, [ {
				offset : 0,
				color : "#35D6FF"
			}, {
				offset : 1,
				color : "#3B90FF"
			} ])
		}
	};

	var gradientStyle3 = {
		normal : {
			color : new echarts.graphic.LinearGradient(0, 0, 0, 1, [ {
				offset : 0,
				color : "#99E28E"
			}, {
				offset : 1,
				color : "#57CFA9"
			} ])
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
			textStyle : {
				color : colorStyle.blackStyle
			},
			fontSize : 10,
			textBorderWidth : 1
		}
	};

	var fontLabel3 = {
		normal : {
			show : true,
			position : "inside",
			textStyle : {
				color : colorStyle.blackStyle
			},
			fontSize : 10,
			textBorderWidth : 1
		}
	};

	// 营销业绩趋势图
	var myChart_performance = echarts.init(document.getElementById("performanceDiv"), "macarons");
	myChart_performance.setOption({
		title : {
			text : "营销业绩趋势图"
		},
		legend : {
			orient: 'vertical',
			right: 0,
		   
			data : [ '2016年', '2017年', '2018年' ],
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
			},
		 color : ['#A2007C','#00B2BF', '#EC870E']
		} ],
		series : [ {
			name : '2016年',
			type : "line",
			label : fontLabel,
			data : []
		}, {
			name : '2017年',
			type : "line",
			label : fontLabel,
			data : []
		}, {
			name : '2018年',
			type : "line",
			label : fontLabel,
			data : []
		}

		]
	}, true);

	//     // 未完成营销任务
	//     var myChart = echarts.init(document.getElementById("unfinishedDiv"), "macarons");

	//     $.get('asset/json/beijing.json', function (geoJson) {

	//         echarts.registerMap('HK', geoJson);

	//         myChart.setOption(option = {
	//             title: {
	//                 text: '香港18区人口密度 （2011）',
	//                 subtext: '人口密度数据来自Wikipedia',
	//                 sublink: 'http://zh.wikipedia.org/wiki/%E9%A6%99%E6%B8%AF%E8%A1%8C%E6%94%BF%E5%8D%80%E5%8A%83#cite_note-12'
	//             },
	//             tooltip: {
	//                 trigger: 'item',
	//                 formatter: '{b}<br/>{c} (p / km2)'
	//             },
	//             toolbox: {
	//                 show: true,
	//                 orient: 'vertical',
	//                 left: 'right',
	//                 top: 'center',
	//                 feature: {
	//                     dataView: {readOnly: false},
	//                     restore: {},
	//                     saveAsImage: {}
	//                 }
	//             },
	//             visualMap: {
	//                 min: 800,
	//                 max: 50000,
	//                 text:['High','Low'],
	//                 realtime: false,
	//                 calculable: true,
	//                 inRange: {
	//                     color: ['lightskyblue','yellow', 'orangered']
	//                 }
	//             },
	//             series: [
	//                 {
	//                     name: '香港18区人口密度',
	//                     type: 'map',
	//                     mapType: 'HK', // 自定义扩展图表类型
	//                     itemStyle:{
	//                         normal:{label:{show:true}},
	//                         emphasis:{label:{show:true}}
	//                     },
	//                     data:[

	//                     ],

	//                 }
	//             ]
	//         });

/* 	myChart_unfinished.setOption({
		title : {
			text : "未完成营销任务",
			subtext : "(万元)"
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
			type : "bar",
			barMaxWidth : "15px",
			label : fontLabel,
			itemStyle : {
				color : colorStyle.areaStyle
			},
			data : []
		}, {
			type : "bar",
			barMaxWidth : "15px",
			xAxisIndex : 1,
			itemStyle : gradientStyle,
			data : []
		} ]
	}, true); */

	// 客户存款变动排名
	var myChart_pubDpsChg = echarts.init(document
			.getElementById("pubDpsChgDiv"), "macarons");
	myChart_pubDpsChg.setOption({
		title : {
			text : "客户存款变动排名",
			subtext : "(万元)"
		},
		series : [ {
			type : "funnel",
			width : "47%",
			min : 0,
			minSize : '0%',
			maxSize : '100%',
			gap : 2,
			label : fontLabel3,
			data : []
		} ]
	}, true);

	// 客户贷款变动排名
	var myChart_pubLoanChg = echarts.init(document
			.getElementById("pubLoanChgDiv"), "macarons");
	myChart_pubLoanChg.setOption({
		title : {
			text : "客户贷款变动排名",
			subtext : "(万元)"
		},
		series : [ {
			type : "funnel",
			width : "47%",
			min : 0,
			minSize : '0%',
			maxSize : '100%',
			gap : 2,
			//             sort : "ascending",
			label : fontLabel3,
			data : []
		} ]
	}, true);

	// 可营销商机
	//     var myChart_busiOpp = echarts.init(document.getElementById("busiOppDiv"), "macarons");
	//     myChart_busiOpp.setOption({
	//         title : {
	//             text : "可营销商机"
	//         },
	//         xAxis : [ {
	//             type : "category",
	//             splitLine : {
	//                 show : false
	//             },
	//             data : [ "商机总数", "我认领", "已完成" ]
	//         } ],
	//         yAxis : [ {
	//             type : "value",
	//             name : "(个)",
	//             position : "left",
	//             splitLine : {
	//                 show : false
	//             }
	//         } ],
	//         series : [ {
	//             type : "bar",
	//             barMaxWidth: "20px",
	//             label : fontLabel,
	//             itemStyle: gradientStyle3,
	//             data : []
	//         } ]
	//     }, true);

	// 客户风险雷达图 
	var myChart_termRadar = echarts.init(document
			.getElementById("perfRankingDiv"), "macarons");
	myChart_termRadar.setOption({
		title : {
			text : "客户风险雷达图"
		},
		tooltip : {},
		legend : {
			data : []
		},
		radar : {
			// shape: 'circle',
			name : {
				textStyle : {
					color : '#fff',
					backgroundColor : '#999',
					borderRadius : 3,
					padding : [ 3, 5 ]
				}
			},
			indicator : [ {
				name : '裁判文书',
				max : 6000
			}, {
				name : '被执行人',
				max : 6000
			}, {
				name : '开庭公告',
				max : 6000
			}, {
				name : '失信信息',
				max : 6000
			}, {
				name : '动产抵押',
				max : 6000
			}, {
				name : '股权出质',
				max : 6000
			}, {
				name : '经营异常',
				max : 6000
			}, {
				name : '行政处罚',
				max : 6000
			}, {
				name : '立案信息',
				max : 6000
			}, {
				name : '税务信息',
				max : 6000
			}, {
				name : '动产抵押',
				max : 6000
			} ]
		},
		series : [ {
			name : '预算 vs 开销（Budget vs spending）',
			type : 'radar',
			// areaStyle: {normal: {}},
			data : [
			//                 {
			//                     value : [4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,],
			//                     name : '机构一'
			//                 },
			//                  {
			//                     value : [2000, 2000, 2000, 2000, 2000,2000, 2000, 2000, 2000, 2000,2000,2000],
			//                     name : '机构二'
			//                 }
			]
		} ]
	}, true);

	// 异步加载数据
	$.ajax({
		url : "president/homepage",
		type : "post",
		dataType : "json",
		async : true,
		success : function(result) {
			if (WebUtils.isSuccess(result)) {
				//             	alert(result.data.termRadar);
				//分机构风险雷达图
				myChart_termRadar.setOption({

					legend : {
						data : result.data.termRadar.orgs
					},
					series : [ {
						data : result.data.termRadar.termRadars
					} ]
				});

				// 营销业绩趋势图
				myChart_performance.setOption({
					series : [ {
						data : result.data.perfAcph.perfAcphTwo
					}, {
						data : result.data.perfAcph.perfAcphOne
					}, {
						data : result.data.perfAcph.perfAcph
					} ]
				});
				// 未完成营销任务
				/* myChart_unfinished.setOption({
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
				}); */
				// 客户存款变动排名
				var pubDpsChg = result.data.pubDpsChg;
				//                 alert(result.data.perfAcph.perfAcphTwo);
				myChart_pubDpsChg.setOption({
					series : [ {
						max : pubDpsChg[0].value,
						data : pubDpsChg
					} ]
				});
				// 客户贷款变动排名
				var pubLoanChg = result.data.pubLoanChg;
				myChart_pubLoanChg.setOption({
					series : [ {
						max : pubLoanChg[0].value,
						data : result.data.pubLoanChg
					} ]
				});
				// 可营销商机
				//                 myChart_busiOpp.setOption({
				//                     series : [ {
				//                         // data : [ "90", "70", "45" ]
				//                         data: result.data.busiOpp
				//                     } ]
				//                 });
				// 业绩排名
				//                 myChart_perfRanking.setOption({
				//                     yAxis : {
				//                         // data : [ "no1", "no2", "no3", "no4", "nom" ]
				//                         data : result.data.perfRanking.perfRankingName
				//                     },
				//                     series : [ {
				//                         // data: [ 165, 140, 50, 30, 10 ]
				//                         data : result.data.perfRanking.perfRanking
				//                     } ]
				//                 });
				// 公告栏
				var msg = result.data.message;
				if (msg.length > 0) {
					  var $msgheader = $(".crm-message-header");
	                  var $msgbody = $(".crm-message-body");
					for (var i_msg = 0; i_msg < 3; i_msg++) {
						$($msgheader[i_msg]).empty().append(
								msg[i_msg].slice(0, 8));
						$($msgbody[i_msg]).empty().append(
								msg[i_msg].slice(0, 150) + "…");
					}
				}
			}
		},
		error : function(errorMsg) {
			WebUtils.alert("图表请求数据失败!");
		}
	})
</script>
</html>