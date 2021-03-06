<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<div class="we7-page-title">文章管理</div>
<ul class="we7-page-tab">
	<li <?php  if($do == 'list') { ?>class="active"<?php  } ?>><a href="<?php  echo url('site/entry/users',array('m' => 'we7_demo'));?>">用户列表</a></li>
</ul>
<?php  if($do == 'list') { ?>
<div class="clearfix">
	<form action="" method="get" class="we7-form" role="form">
		<input type="hidden" name="c" value="activity">
		<input type="hidden" name="a" value="news">
		<input type="hidden" name="do" value="list">
		<input type="hidden" name="cateid" value="<?php  echo $_GPC['cateid'];?>">
		<input type="hidden" name="createtime" value="<?php  echo $_GPC['createtime'];?>">
		<div class="form-group">
			<label class="col-sm-2 control-label">注册时间</label>
			<div class="form-controls col-sm-8">
				<div class="btn-group we7-btn-group">
					<a href="<?php  echo filter_url('createtime:0');?>" class="btn <?php  if($_GPC['createtime'] == 0) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">不限</a>
					<a href="<?php  echo filter_url('createtime:3');?>" class="btn <?php  if($_GPC['createtime'] == 3) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">三天内</a>
					<a href="<?php  echo filter_url('createtime:7');?>" class="btn <?php  if($_GPC['createtime'] == 7) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">一周内</a>
					<a href="<?php  echo filter_url('createtime:30');?>" class="btn <?php  if($_GPC['createtime'] == 30) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">一月内</a>
					<a href="<?php  echo filter_url('createtime:90');?>" class="btn <?php  if($_GPC['createtime'] == 90) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">三月内</a>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">用户名称</label>
			<div class="input-group col-sm-4 pull-left">
				<input class="form-control" name="title" id="" type="text" value="<?php  echo $_GPC['title'];?>">
				<div class="input-group-btn">
					<button class="btn btn-default"><i class="fa fa-search"></i> </button>
				</div>
			</div>
			<div class="pull-right">
				<a href="javascript:;" data-toggle="modal" data-target="#displaysetting" class="btn btn-primary">排序设置</a>
			</div>
		</div>
	</form>
	<table class="table we7-table table-hover">
		<col width="110px"/>
		<col width="200px"/>
		<col width="130px"/>
		<col width="100px"/>
		<col width="300px"/>
		<col width="300px"/>
		<tr>
			<th>用户ID</th>
			<th>微信名称</th>
			<th>头像</th>
			<th>性别</th>
			<th>注册时间</th>
			<th style="text-align: right">操作</th>
		</tr>
		<?php  if(is_array($activitys)) { foreach($activitys as $list) { ?>
		<tr>
			<td>
				<span><?php  echo $list['id'];?></span>
			</td>
			<td>
				<span><?php  echo $list['nick_name'];?></span>
			</td>
			<td>
				<span><img src="<?php  echo $list['headimgurl'];?>" style="height:50px;width: 50px"></span>
			</td>
			<td>
			<?php  if($list['gender'] == 1) { ?>
			<span class="label label-success">男</span>
			<?php  } else { ?>
			<span class="label label-danger">女</span>
			<?php  } ?>
			</td>
			<td>
				<span><?php  echo $list['reg_time'];?></span>
			</td>
			<td>
				<div class="link-group">
					<a href="<?php  echo url('article/news/post', array('id' => $list['id']));?>">查看</a>
					<!--<a href="<?php  echo url('article/news/del', array('id' => $new['id']));?>" class="del" onclick="if(!confirm('确定删除吗')) return false;">删除</a>-->
				</div>
			</td>
		</tr>
		<?php  } } ?>
	</table>
	<div class="modal fade" id="displaysetting" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="we7-modal-dialog modal-dialog we7-form">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<div class="modal-title">修改新闻排序设置</div>
				</div>
				<form action="" method="get">
					<input type="hidden" name="c" value="article">
					<input type="hidden" name="a" value="news">
					<input type="hidden" name="do" value="displaysetting">
					<div class="modal-body">
						<div class="form-group">
							<select name="setting" class="we7-select">
								<option value="order">按排序数字大小倒序</option>
								<option value="createtime">按添加时间倒序</option>
							</select>
							<span class="help-block"></span>
						</div>
					</div>
					<div class="modal-footer">
						<button name="submit" class="btn btn-primary" value="submit">确定</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="text-right">
		<?php  echo $pager;?>
	</div>
</div>
<?php  } else if($do == 'post') { ?>
<div class="clearfix">
	<form action="<?php  echo url('article/news/post');?>" method="post" class="we7-form" role="form" id="form1">
		<input type="hidden" name="id" value="<?php  echo $new['id'];?>"/>
		
				<div class="form-group">
					<label class="col-sm-2 control-label">新闻标题</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="title" value="<?php  echo $new['title'];?>" placeholder="新闻标题"/>
						<div class="help-block">请填写新闻标题</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">新闻分类</label>
					<div class="col-sm-8">
						<select name="cateid" id="cateid" class="form-control">
							<option value="">==请选择新闻分类==</option>
							<?php  if(is_array($categorys)) { foreach($categorys as $category) { ?>
							<option value="<?php  echo $category['id'];?>" <?php  if($new['cateid'] == $category['id']) { ?>selected<?php  } ?>><?php  echo $category['title'];?></option>
							<?php  } } ?>
						</select>
						<div class="help-block">还没有分类，点我 <a href="<?php  echo url('article/news/category_post');?>" target="_blank"><i class="fa fa-plus-circle"></i> 添加分类</a></div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">缩略图</label>
					<div class="col-sm-8">
						<?php  echo tpl_form_field_image('thumb', $new['thumb'], '', array('dest_dir' => 'articles'));?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label"></label>
					<div class="col-sm-8">
						<div class="help-block"><input type="checkbox" id="autolitpic" name="autolitpic" value="1"<?php  if(empty($item['thumb'])) { ?> checked="true"<?php  } ?>><><label for="autolitpic">提取内容的第一个图片为缩略图</label></div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">内容</label>
					<div class="col-sm-8">
						<?php  echo tpl_ueditor('content', $new['content']);?>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">新闻来源</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="source" value="<?php  echo $new['source'];?>" placeholder="新闻来源"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">新闻作者</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="author" value="<?php  echo $new['author'];?>" placeholder="新闻作者"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">阅读次数</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="click" value="<?php  echo $new['click'];?>" placeholder="阅读次数"/>
						<div class="help-block">默认为0。您可以设置一个初始值,阅读次数会在该初始值上增加。</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">排序</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="displayorder" value="<?php  echo $new['displayorder'];?>" placeholder="阅读次数"/>
						<div class="help-block">数字越大，越靠前。</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">是否显示</label>
					<div class="col-sm-8">
						<input id="is_display-1" type="radio" name="is_display" value="1" <?php  if($new['is_display'] == 1) { ?> checked<?php  } ?>> <label for="is_display-1">显示</label>
						<input id="is_display-2" type="radio" name="is_display" value="0" <?php  if($new['is_display'] == 0) { ?> checked<?php  } ?>> <label for="is_display-2">不显示</label>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">显示在首页</label>
					<div class="col-sm-8">
						<input type="radio" id="is_show_home-1" name="is_show_home" value="1" <?php  if($new['is_show_home'] == 1) { ?> checked<?php  } ?>><label class="radio-inline" for="is_show_home-1"> 是</label>
						<input type="radio" id="is_show_home-2" name="is_show_home" value="0" <?php  if($new['is_show_home'] == 0) { ?> checked<?php  } ?>><label class="radio-inline" for="is_show_home-1"> 否</label>
					</div>
				</div>
			
		
		<div class="form-group">
			<div class="">
				<input type="submit" class="btn btn-primary" name="submit" value="提交" />
				<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
			</div>
		</div>
	</form>
</div>
<?php  } ?>
<script>
	$(function(){
		$('#form1').submit(function(){
			if(!$.trim($(':text[name="title"]').val())) {
				util.message('请填写新闻标题', '', 'error');
				return false;
			}
			if(!$.trim($('#cateid').val())) {
				util.message('请选择新闻分类', '', 'error');
				return false;
			}
			if(!$.trim($('textarea[name="content"]').val())) {
				util.message('请填写新闻内容', '', 'error');
				return false;
			}
			return true;
		});
	});
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>
