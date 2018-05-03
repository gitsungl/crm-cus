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

    <script src="../assets/js/jquery-1.11.1.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="../assets/js/html5shiv.min.js"></script>
        <script src="../assets/js/respond.min.js"></script>
    <![endif]-->

</head>
<body class="page-body" style="overflow-x: hidden;">

<div class="page-container">
    <div class="main-content">

        <div class="panel panel-default collapsed">
            <div class="panel-heading">
                <h3 class="panel-title">产品信息表列表</h3>
                <div class="panel-options">
                    <a href="#" data-toggle="panel">
                        <span class="collapse-icon">&ndash;</span>
                        <span class="expand-icon">+</span>
                    </a>
                </div>
            </div>
            <div class="panel-body">
                <h4 class="text-muted">过滤条件设置</h4>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="s_prdId" class="control-label">产品ID</label>
                            <input type="text" class="form-control" id="s_prdId"></input>
                        </div>    
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="s_prdName" class="control-label">产品名称</label>
                            <input type="text" class="form-control" id="s_prdName"></input>
                        </div>    
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="s_prdType" class="control-label">产品类型</label>
                            <select class="form-control" id="s_prdType" ></select>
                        </div>    
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="s_prdDesc" class="control-label">产品描述</label>
                            <input type="text" class="form-control" id="s_prdDesc"></input>
                        </div>    
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="s_crtTime" class="control-label">创建时间</label>
                            <input type="text" class="form-control" id="s_crtTime"></input>
                        </div>    
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="s_crtUser" class="control-label">创建人</label>
                            <input type="text" class="form-control" id="s_crtUser"></input>
                        </div>    
                    </div>
                </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group pull-right">
                            <button type="button" class="btn btn-success" id="filter_button">过滤</button>
                        </div>    
                    </div>
                </div>
            </div>
            <div class="panel-body-">         
                <div class="row">
                    <div class="col-md-8">
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-secondary glyphicon glyphicon-plus" id="badd">
                                <input type="checkbox">新增</input>
                            </label>
                            <label class="btn btn-blue glyphicon glyphicon-pencil" id="bupdate">
                                <input type="checkbox">修改</input>
                            </label>
                            <label class="btn btn-blue glyphicon glyphicon-trash" id="bdelete">
                                <input type="checkbox">删除</input>
                            </label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="haha" >
                            <li class="hiden-columns-title pull-right">
                                <a href="#" >
                                    <span>隐藏列<i class="fa-angle-down"></i>
                                    </span>
                                </a>
                                <ul class="hiden-columns">
                                </ul>
                            </li>
                        </div>
                    </div>
                </div>
                <table class="table table-bordered table-striped nowrap" id="listtable" style="width: 100%;">
                    <thead>
                        <tr>
                            <th>产品ID</th>
                            <th>产品名称</th>
                            <th>产品类型</th>
                            <th>产品描述</th>
                            <th>创建时间</th>
                            <th>创建人</th>
                        </tr>
                    </thead>
                    <tbody class="middle-align">
                    </tbody>
                </table>
            </div>
        </div>
    

        <!-- Imported styles on this page -->
        <link rel="stylesheet" href="../assets/js/datatables/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="../assets/js/select2/select2.css">
        <link rel="stylesheet" href="../assets/js/select2/select2-bootstrap.css">
        <link rel="stylesheet" href="../assets/js/multiselect/css/multi-select.css">
        <link rel="stylesheet" href="../css/app.css">

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
        <script type="text/javascript">
        $(function () {
            //初始化列表
            var initparams = {
               "ajax": {
                   "url": "product_info/list",
                   "type": "POST",
                   "data": function ( d ) {
                       var orders = d.order;
                       for (var i =0; i < orders.length; i++) {
                           d["norder["+i+"][column]"] = d.columns[orders[i]['column']].data;
                           d["norder["+i+"][dir]"] = orders[i]['dir'];
                       }
                       d.s_prdId = $('#s_prdId').val();
                       d.s_prdName = $('#s_prdName').val();
                       d.s_prdType = $('#s_prdType').val();
                       d.s_prdDesc = $('#s_prdDesc').val();
                       d.s_crtTime = $('#s_crtTime').val();
                       d.s_crtUser = $('#s_crtUser').val();
                     }
                },
                "columns": [
                    { "data": "prdId" },
                    { "data": "prdName" },
                    { "data": "prdType" },
                    { "data": "prdDesc" },
                    { "data": "crtTime" },
                    { "data": "crtUser" }
                ],
                "columnDefs": [
                    {
                         "render": function ( data, type, row ) {
                             var hstr =  WebUtils.getCodeValue('prd_type',data);
                             return hstr;
                         },
                         "targets": [ 2 ]
                     }
                 ]
            }
            var params = $.extend({},WebUtils.settings, initparams);
            var table= $("#listtable").DataTable(params);
            WebUtils.initColumnHider(table);
            //过滤条件设置按钮
            $('#filter_button').click( function () {
                table.draw();
            });
            
            //删除
            $('#bdelete').click( function () {
                var data = table.rows('.selected').data();
                if (data) {
                    var sdata = [];
                    for (var x =0; x< data.length; x ++) {
                        sdata.push(data[x]);
                    }
                    var str =  JSON.stringify(sdata);
                    WebUtils.ajaxSubmitJson('product_info/delete',str,function(result){
                        WebUtils.alert(result.msg);
                        table.draw();
                    });
                }
            } );
            
            //新增
            $('#badd').click( function () {
                jQuery('#detail').modal('show', {backdrop: 'static',action: "product_info/add",title:"新增产品信息表"});
            });
            
            //修改
            $('#bupdate').click( function () {
                var data = table.rows('.selected').data();
                if (data.length == 1) {
                    jQuery('#detail').modal('show', {backdrop: 'static',action: "product_info/update",title:"修改产品信息表"});
                } else {
                     WebUtils.alert("请选择一条记录！");
                }
            });
            
            
            
            //明细对话框消失后刷新
            $('#detail').on('hidden.bs.modal', function (event) {
                table.draw();
            });
            
            //明细对话框显示后处理
            $('#detail').on('show.bs.modal', function (event) {
                //设置详细对话框内容
                var button = $(event.relatedTarget);
                var modal = $(this);
                modal.find('.modal-title').text(button.attr('title'));
                modal.find('form').attr("action", button.attr('action'));
                //清除原来的校验
                $('#detail form').validate().resetForm();
                $('#detail .form-group').removeClass('validate-has-error');

                if (button.attr('action') == 'product_info/add') {
                    $('#detail form')[0].reset();
                    $('#prdType').select2('val','');
                } else {
                    var data = table.row('.selected').data();
                    if (data) {
                        $('#prdId').val(data['prdId']);
                        $('#prdName').val(data['prdName']);
                        $('#prdType').select2('val',data['prdType']);
                        $('#prdDesc').val(data['prdDesc']);
                        $('#crtTime').val(data['crtTime']);
                        $('#crtUser').val(data['crtUser']);
                    }
                }
            });
        });
        
        function submitDetail() {
            var form = $('#detail form');
            if (form.valid()) {
                var url = form.attr('action');
                var data = form.serialize();
                WebUtils.ajaxSubmit(url,data,function(result){
                    $('#detail').modal('hide');
                });
            }
            return false;
        }
        </script>
</div>

</div>
<div class="modal fade" id="detail">
       <div class="modal-dialog" >
           <div class="modal-content">
               <form method="post" class="validate" onsubmit="return submitDetail()">
               <div class="modal-header">
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                   <h4 class="modal-title"></h4>
               </div>
               <div class="modal-body">
                   <div class="row">
                       <div class="col-md-4">
                           <div class="form-group">
                               <label for="prdId" class="control-label">产品ID</label>
                               <input type="text" class="form-control" id="prdId" name="prdId" placeholder="请输入产品ID" 
                                 data-validate="required" data-message-required="此项必须输入."></input>
                           </div>
                       </div>
                       <div class="col-md-4">
                           <div class="form-group">
                               <label for="prdName" class="control-label">产品名称</label>
                               <input type="text" class="form-control" id="prdName" name="prdName" placeholder="请输入产品名称" 
                                 data-validate="required" data-message-required="此项必须输入."></input>
                           </div>
                       </div>
                       <div class="col-md-4">
                           <div class="form-group">
                               <label for="prdType" class="control-label">产品类型</label>
                               <select class="form-control" id="prdType" name="prdType" data-validate="required" data-message-required="此项必须输入."></select>
                           </div>
                       </div>
                  </div>
                   <div class="row">
                       <div class="col-md-4">
                           <div class="form-group">
                               <label for="prdDesc" class="control-label">产品描述</label>
                               <input type="text" class="form-control" id="prdDesc" name="prdDesc" placeholder="请输入产品描述" 
                                 data-validate="required" data-message-required="此项必须输入."></input>
                           </div>
                       </div>
                       <div class="col-md-4">
                           <div class="form-group">
                               <label for="crtTime" class="control-label">创建时间</label>
                               <input type="text" class="form-control" id="crtTime" name="crtTime" placeholder="请输入创建时间" 
                                 data-validate="required" data-message-required="此项必须输入."></input>
                           </div>
                       </div>
                       <div class="col-md-4">
                           <div class="form-group">
                               <label for="crtUser" class="control-label">创建人</label>
                               <input type="text" class="form-control" id="crtUser" name="crtUser" placeholder="请输入创建人" 
                                 data-validate="required" data-message-required="此项必须输入."></input>
                           </div>
                       </div>
                  </div>
                  </div>
               </div>
               <div class="modal-footer">
                   <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
                   <button type="submit" class="btn btn-blue" >保存</button>
               </div>
               </form>
           </div>
       </div>
   </div>
 
<jsp:include page="/WEB-INF/template/settings.jsp"></jsp:include>

<s:enums keys="prd_type"></s:enums>

<script type="text/javascript">
$(function () {
    //下拉框数据绑定
    WebUtils.bindSelect('s_prdType','prd_type');
    WebUtils.bindSelect('prdType','prd_type');
});
</script>
</body>
</html>