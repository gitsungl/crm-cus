http://select2.github.io/select2/

###普通固定下拉框
	<select class="form-control" id="vnodeImg" name="vnodeImg" >
		<option value="linecons-music">linecons-music</option>
		<option value="linecons-search">linecons-search</option>
		<option value="linecons-mail">linecons-mail</option>
	</select>
	<script type="text/javascript">
		jQuery(document).ready(function($)
		{
			$("#vnodeImg").select2({
				placeholder: 'Select icon ...',
				allowClear: true,
				minimumResultsForSearch: -1 , // Hide the search bar
				
				formatResult: function(state)
				{
					return '<i class="' + state.id + '"></i>' + state.text;
				}
			}).on('select2-open', function()
			{
				// Adding Custom Scrollbar
				$(this).data('select2').results.addClass('overflow-hidden').perfectScrollbar();
			});
		});
	</script>
	
###动态查询下拉数据
	$("#vnodeImg").select2({
		placeholder: 'Select icon ...',
		minimumInputLength: 1,
		ajax: {
			url: "enumitem",
			dataType: 'json',
			quietMillis: 100,
			data: function(term, page) {
				return {
					limit: -1,
					q: term
				};
			},
			results: function(data, page ) {
				return { results: data }
			}
		},
        cache: true,
		//必须添加，否则无法选择列出的选项
		id : function(item) {  
	        return item.nodeId;  
	    },
	    formatResult: function(item) {
	    	return '<i class="' + item.nodeImg + '"></i>' + item.nodeImg;
	    },  
	    formatSelection: function(item) {
	    	return item.nodeId;
	    },
	    initSelection: function(element, callback) {
	    	var id = $(element).val();
	    	//这里是初始化的数据，你可以通过id来从服务器上获取（ajax），再装载进去
	    	var data = { nodeId: id, text: id};
	    	callback(data);
	    }
	});
	
	

http://getfuelux.com/javascript.html#tree
		
###树
	<ul id="myTree" class="tree tree-folder-select" role="tree" >
	  <li class="tree-branch hide" data-template="treebranch" role="treeitem" aria-expanded="false">
	    <div class="tree-branch-header">
	      <button class="glyphicon icon-caret glyphicon-play"><span class="sr-only">Open</span></button>
	      <button class="tree-branch-name">
	        <span class="glyphicon icon-folder glyphicon-folder-close"></span>
	        <span class="tree-label"></span>
	      </button>
	    </div>
	    <ul class="tree-branch-children" role="group"></ul>
	    <div class="tree-loader" role="alert">Loading...</div>
	  </li>
	  <li class="tree-item hide" data-template="treeitem" role="treeitem">
	    <button class="tree-item-name">
	      <span class="glyphicon icon-item fueluxicon-bullet"></span>
	      <span class="tree-label"></span>
	    </button>
	  </li>
	</ul>


	$('#myTree').tree({
		dataSource: dynamicDataSource,
	  	multiSelect: false,
	  	folderSelect: true
	});
			 
	$('#myTree').on('selected.fu.tree', function (event, data) {
	  	// do something with data: { selected: [array], target: [object] }
	  	//alert(JSON.stringify(data));
	  	var item = data.target;
		$('#vparentNode').val(item.parentNode);
		$('#vnodeId').val(item.nodeId);
		$('#vnodeName').val(item.nodeName);
		$('#vnodeUrl').val(item.nodeUrl);
		$('#bmodify').removeAttr("disabled");
	})
	
	
### 新增对话框
	<div class="modal fade" id="detail">
		<div class="modal-dialog" >
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title"></h4>
				</div>
				<div class="modal-body">
				
				//添加具体内容
					
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
					<button type="submit" class="btn btn-success" >保存</button>
				</div>
			</div>
		</div>
	</div>
	
###
	@Transactional(propagation=Propagation.REQUIRES_NEW,rollbackFor=Exception.class)
