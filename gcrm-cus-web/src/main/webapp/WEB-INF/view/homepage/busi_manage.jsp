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
.messageCol {
  padding-left: 25px;
  padding-right: 25px;
}
.messagelabel {
  padding: 10px;
}
.pe3Row{
  width:  670px;
  height: 330px;
}
.leftCol {
  padding-left: 15px;
}
.rightCol {
  padding-right: 15px;
}
.downCol{
  padding-top :15px;
}
.topCol{
  padding-bottom :15px;
}
.lessCol {
  width: 43%;
}
.moreCol {
  width: 57%;
}
.fro50Col {
  width: 50%;
}
.echartsCol {
  height: 340px;
}

.echartsColDown {
  height : 660px;
}
.echartsHeight {
  height: 280px;
}
.echartsHeight-left {
  wigth: 470px;
  height: 660px;
}
.chart-label {
  width :570px;
  height :330px;
}
.chart-label-Left{
  width : 490px;
  height : 660px;
}
.p3topColBg {
  width :660px;
  height :330px;
}
.chart-labelTop{
  width :660px;
  height :330px;
}
.chart-labelDown{
  width :190px;
  height :300px;
}
.pe3ColTop{
  width : 670px;
  height :330px;
}
.model {
  width :530px;
  height :300px
}
.messageHeight {
  height: 180px;
}
.echartsHeight1 {
  width :630px;
  height : 320px; 
}
.message-header {
  font-size: 14px;
  line-height: 14px;
}
.message-body {
  font-size: 12px;
  line-height: 12px;
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
#pubLoanChgDiv {
  width: 337px;
}
#busiOppDiv {
  width: 337px;
}

</style>
</head>

<body class="page-body">
  <div class="page-container">
    <div class="main-content">
      <div id="topRow" class="row">
        <div class="col-sm-6 leftCol fro50Col">
          <div class="chart-item-bg echartsCol">
            <div class="chart-label">
              <div id="MktTaskInfoDiv" class="echartsHeight model"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 rightCol fro50Col">
          <div class="chart-item-bg echartsCol">
            <div class="chart-label">	
              <div id="MktStfPerfPoDiv-Bank" class="echartsHeight model"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 leftCol lessCol">
          <div class="echartsColDown chart-item-bg">
            <div class="chart-label-Left">
              <div id="perfRankingDiv" class="echartsHeight-left"><a href=""><img alt="" src="../images/crm/yxhdfqlc.png"></a></div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 rightCol moreCol">
          <div class="pe3Row">
            <div class="col-sm-4 pe3ColTop chart-item-bg">
          	 <div class="p3topColBg"> 
               <div class="chart-labelTop">
                <div id="MktStfPerfPoDiv" class="echartsHeight1"></div>
              </div>
             </div>
            </div>
             <div class="col-sm-12 messageCol downCol chart-item-bg"><!-- TODO -->
              <div class="row">
                <div class="col-sm-4">
                  <div class="chart-labelDown" style="padding-left: 10px; padding-right: 10px;">
                    <div class="xe-widget xe-status-update">
                      <div class="xe-header message-header"></div>
                      <div>&nbsp;</div>
                      <div class="xe-body message-body messageHeight"></div>
                      <div class="xe-footer">
                        <a href="#">
                          <i class="fa-retweet"></i>了解更多&gt;
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="chart-labelDown" style="padding-left: 10px; padding-right: 10px;">
                    <div class="xe-widget xe-status-update">
                      <div class="xe-header message-header"></div>
                      <div>&nbsp;</div>
                      <div class="xe-body message-body messageHeight"></div>
                      <div class="xe-footer">
                        <a href="#">
                          <i class="fa-retweet"></i>了解更多&gt;
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="chart-labelDown" style="padding-left: 10px; padding-right: 10px;">
                    <div class="xe-widget xe-status-update">
                      <div class="xe-header message-header"></div>
                      <div>&nbsp;</div>
                      <div class="xe-body message-body messageHeight"></div>
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
   /*  var pathesq  = {
     "prj_done" : "../images/crm/prj_done.png",
     "prj_todo" : "../images/crm/prj_todo.png",
    };
    var layouts = [
        [[0, 0]],
        [[-0.25, 0], [0.25, 0]],
        [[0, -0.2], [-0.2, 0.2], [0.2, 0.2]],
        [[-0.25, -0.25], [-0.25, 0.25], [0.25, -0.25], [0.25, 0.25]]
    ];
     //图标处理位置 
    var pathes = [
        'M936.857805 523.431322c0 0-42.065715-68.89513-88.786739-68.89513-46.68416 0-95.732122 71.223091-95.732122 71.223091s-44.28544-72.503296-93.440922-71.152538c-35.565466 0.977306-62.89705 30.882406-79.124275 64.06615L579.773747 790.800797c-3.253248 37.391565-5.677568 50.904371-12.002816 69.63497-6.651802 19.698688-19.544883 35.227341-31.650099 45.909606-14.30231 12.621414-29.59831 22.066586-45.854208 27.424563-16.28969 5.362074-30.098739 6.496973-51.536794 6.496973-19.498906 0-36.95104-2.963456-52.395418-8.850534-15.410586-5.887078-28.420403-14.313984-39.034573-25.246003-10.613146-10.930995-18.757939-24.08151-24.435507-39.525171-5.676544-15.443763-8.532685-40.195482-8.532685-59.270963l0-26.232454 74.435273 0c0 24.644301-0.17705 64.452915 8.81408 77.006848 9.02697 12.515021 22.756147 18.092032 41.148826 18.791014 16.728678 0.636518 30.032179-8.061645 30.032179-8.061645s11.922022-10.5472 14.992077-19.756954c2.674995-8.025805 3.565363-22.180147 3.565363-22.180147s2.080461-21.789286 2.080461-34.234675L489.399906 514.299369c-16.678502-18.827776-43.801395-61.938688-82.756096-60.927693-54.699008 1.419366-100.422144 70.059622-100.422144 70.059622s-56.065126-70.059622-93.440922-70.059622c-37.376717 0-91.077939 70.059622-91.077939 70.059622S105.343488 156.737741 476.742042 119.363584l53.70327-74.714624 51.373056 74.714624C964.889395 142.740992 936.857805 523.431322 936.857805 523.431322z',
        'M533.504 268.288q33.792-41.984 71.68-75.776 32.768-27.648 74.24-50.176t86.528-19.456q63.488 5.12 105.984 30.208t67.584 63.488 34.304 87.04 6.144 99.84-17.92 97.792-36.864 87.04-48.64 74.752-53.248 61.952q-40.96 41.984-85.504 78.336t-84.992 62.464-73.728 41.472-51.712 15.36q-20.48 1.024-52.224-14.336t-69.632-41.472-79.872-61.952-82.944-75.776q-26.624-25.6-57.344-59.392t-57.856-74.24-46.592-87.552-21.504-100.352 11.264-99.84 39.936-83.456 65.536-61.952 88.064-35.328q24.576-5.12 49.152-1.536t48.128 12.288 45.056 22.016 40.96 27.648q45.056 33.792 86.016 80.896z',
        'M741.06368 733.310464c8.075264-29.262438 20.615373-40.632422 14.64105-162.810061C966.089728 361.789952 967.93897 72.37847 967.855002 54.693683c0.279347-0.279347 0.418509-0.419533 0.418509-0.419533s-0.17705-0.00512-0.428749-0.00512c0-0.251699 0-0.428749 0-0.428749s-0.139162 0.14633-0.418509 0.425677c-17.695744-0.083866-307.10784 1.760051-515.833958 212.142592-122.181632-5.984256-133.55305 6.563533-162.815693 14.644531C235.35063 295.798886 103.552614 436.975309 90.630758 486.076621c-12.921856 49.105408 39.634227 56.859034 58.579558 58.581197 18.953421 1.724314 121.471386-9.475789 130.09111 4.309094 0 0 16.367411 11.200102 17.226035 41.346662 0.850432 29.796659 15.173222 71.354163 37.123994 97.267302-0.028672 0.027648-0.05632 0.054272-0.083866 0.074752 0.158618 0.13097 0.316211 0.261939 0.474829 0.390861 0.129946 0.149402 0.261939 0.319283 0.393011 0.468685 0.019456-0.019456 0.04608-0.049152 0.075776-0.075674 25.918362 21.961216 67.477504 36.272128 97.269248 37.122458 30.149837 0.859546 41.354547 17.234534 41.354547 17.234534 13.779354 8.608051 2.583962 111.122842 4.302131 130.075546 1.727386 18.95168 9.477222 71.498445 58.579558 58.576077C585.12896 918.526771 726.311117 786.734182 741.06368 733.310464zM595.893555 426.206003c-39.961702-39.965184-39.961702-104.75991 0-144.720077 39.970918-39.96928 104.768307-39.96928 144.730112 0 39.970918 39.960064 39.970918 104.75479 0 144.720077C700.661862 466.171187 635.864474 466.171187 595.893555 426.206003zM358.53312 769.516032c-31.923302-4.573184-54.890394-18.410291-71.41847-35.402342-16.984474-16.526438-30.830387-39.495475-35.405824-71.420621-4.649062-28.082586-20.856832-41.167565-38.76649-38.763827-17.906586 2.40681-77.046886 66.714419-80.857805 89.475891-3.80887 22.752154 29.271859 12.081152 46.424166 27.654861 17.151283 15.590093-2.139853 61.93664-14.733107 86.845952-6.441984 12.735078-10.289766 26.42176-4.22953 33.76087 7.346586 6.070272 21.03593 2.222592 33.769472-4.220109 24.912384-12.585677 71.258829-31.872922 86.842368-14.731469 15.583539 17.160806 4.911002 50.229965 27.674419 46.419251 22.754099-3.807744 87.065395-62.946611 89.466163-80.85248C399.70857 790.374093 386.627072 774.166938 358.53312 769.516032z',
        'M848.794624 939.156685 571.780416 939.156685 571.780416 653.17123l341.897539 0 0 221.100654C913.677926 909.960704 884.482867 939.156685 848.794624 939.156685zM571.780403 318.743552c-11.861606-3.210138-31.443354-8.36864-39.829709-16.176435-0.596582-0.561766-1.016218-1.246413-1.613824-1.841971-0.560845 0.596582-1.016218 1.280205-1.613824 1.841971-8.386355 7.807795-15.96631 12.965274-27.827917 16.176435l0 263.544325L141.030675 582.287877 141.030675 355.202884c0-35.687834 29.195059-64.882688 64.883302-64.882688l150.649125 0c-16.984474-9.525965-32.846438-20.56233-46.111027-32.932045-60.250624-56.144691-71.129907-137.062605-24.283034-180.767027 19.615539-18.264986 46.252237-27.124736 75.026739-27.124736 39.933133 0 83.972915 17.070797 118.995968 49.706086 20.353331 18.983322 37.722624 43.405619 50.145075 69.056819 12.457267-25.6512 29.791744-50.074419 50.180915-69.056819 35.022029-32.63529 79.062835-49.706086 118.994944-49.706086 28.74071 0 55.410176 8.860774 75.025715 27.124736 46.882611 43.704422 35.96759 124.622336-24.283034 180.767027-13.264589 12.368691-29.127578 23.40608-46.111027 32.932045l144.649234 0c35.688243 0 64.882278 29.195981 64.882278 64.882688l0 227.084948L571.780416 582.287833 571.780416 318.743508zM435.064218 147.625267c-21.476966-19.965747-49.094144-31.913882-73.868288-31.913882-7.404954 0-21.125018 1.211597-29.863322 9.386803-2.000691 1.824563-8.070144 7.439462-8.070144 21.369754 0 15.650406 8.492749 40.24873 32.319386 62.477926 29.124506 27.12576 77.202432 47.601152 111.76704 47.601152 12.176794 0 16.492237-2.666701 16.527053-2.702541C489.524736 242.54505 475.664486 185.453773 435.064218 147.625267zM577.78135 254.790963c0 0 0.034816-0.034816 0.069632-0.034816 0.807424 0 5.50871 1.790771 15.509914 1.790771 34.564608 0 82.64151-20.47529 111.76704-47.601152 23.826637-22.229299 32.283546-46.810112 32.283546-62.442189 0-13.930291-6.033613-19.562496-8.035328-21.404467-8.77312-8.17623-22.457344-9.386803-29.864346-9.386803-24.808038 0-52.390298 11.948134-73.867264 31.913882C585.325466 185.208218 571.358822 241.73865 577.78135 254.790963zM500.89513 939.156685 205.914017 939.156685c-35.688243 0-64.883302-29.195981-64.883302-64.883712L141.030714 653.17123l359.864462 0L500.895177 939.15666z'
    ]; 
    var colors = [
        '#c4332b', '#16B644', '#6862FD', '#FDC763'
    ]; */

    // 图1：营销进度图
    var myChart_MktTaskInfo = echarts.init(document.getElementById("MktTaskInfoDiv"), "macarons");
    myChart_MktTaskInfo.setOption({
    	title : {
	        text : "营销进度",
	        x : 18,
	        y : 5.5
	    },
	    angleAxis: {
	        type: 'category',
	        z: 10
	    },
	    radiusAxis: {
	    },
	    polar: {
	    },
	    legend: {
	        orient: 'vertical',
	        right: 0,
	        bottom: 70,
	    },
        series : []
    }, true);

    // 未完成营销任务
  /*    var myChart_pubvifylist = echarts.init(document.getElementById("PubVifyListDiv"), "macarons");
    myChart_pubvifylist.setOption({
    	tooltip: {
        },
        calendar: [{
            left: 'center',
            top: 'middle',
            cellSize: [70, 70],
            yearLabel: {show: false},
            orient: 'vertical',
            dayLabel: {
                firstDay: 1,
                nameMap: 'cn'
            },
            monthLabel: {
                show: false
            },
            range: null
        }],
        series: [{
            type: 'custom',
            coordinateSystem: 'calendar',
            renderItem: [],
            dimensions: [null, {type: 'ordinal'}],
            data: []
        }]
    }, true);  */ 

    // 客户存款变动排名
    var myChart_mktstfperfpo = echarts.init(document.getElementById("MktStfPerfPoDiv"), "macarons");
    myChart_mktstfperfpo.setOption({
    	title : {
            text : "业绩比较",
            x : 18,
            y : 5.5
        },
        legend: {
        	x : '87%',
        	y : '20%',
        },
		xAxis: {
   		 	type: 'category',
    		data: [1,2,3,4,5,6,7,8,9,10,11,12],
    	 	name: "(月)",
		},
		yAxis: {
    		type: 'value',
     		name :"(万元)"
		},
        series : [{
            type : "line",
            smooth : true,
            data : []
        }]
    }, true);

    // 异步加载数据
    $.ajax({
        url : "busi_manage/homepage",
        type : "post",
        dataType : "json",
        async : true,
        success : function(result) {
            if (WebUtils.isSuccess(result)) {
            	 var data =[];
            	var nameList = result.data.MktTaskInfoPoName;
            	var numList = result.data.MktTaskInfoPoStu; 
                // 营销业绩趋势图
                 myChart_MktTaskInfo.setOption({
                    series: [{type: 'bar',
        		        data: [numList[0]],
        		        coordinateSystem: 'polar',
        		        name: nameList[0]},
        		        {type: 'bar',
            		        data: [numList[1]],
            		        coordinateSystem: 'polar',
            		        name: nameList[1]},
            		        {type: 'bar',
                		        data: [numList[2]],
                		        coordinateSystem: 'polar',
                		        name: nameList[2]},
                		        {type: 'bar',
                    		        data: [numList[3]],
                    		        coordinateSystem: 'polar',
                    		        name: nameList[3]}]
                }); 
                // 未完成营销任务
                /*  myChart_pubvifylist.setOption({
                	calendar: [{range: result.data.PubVifyListTabYear}],
                    series: [{renderItem: renderItem,
                        data: [result.data.PubVifyListTab]
                    }]
                });   */
                // 业绩比较图
                myChart_mktstfperfpo.setOption({
                    series: [{
                    	name:result.data.MktStfPerfPoTabYear,
                    	data:result.data.MktStfPerfPoTabNum}]
                });
                
                // 公告栏
                var msg = result.data.message;
                if (msg.length > 0) {
                    var $msgheader = $(".message-header");
                    var $msgbody = $(".message-body");
                    for (var i_msg = 0; i_msg < 3; i_msg++) {
                        $($msgheader[i_msg]).empty().append(msg[i_msg].slice(0, 8));
                        $($msgbody[i_msg]).empty().append(msg[i_msg].slice(0, 100));
                    }
                }
            }
        },
        error : function(errorMsg) {
            WebUtils.alert("图表请求数据失败!");
        }
    })
    
/* function renderItem(params, api) {
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
                    cellPoint[1] + echarts.number.linearMap(itemLayout[1], [-0.5, 0.5], [-cellHeight / 2 + 20, cellHeight / 2])
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
      console.log(group);
    return group;
} */
    
</script>
</script>
</html>