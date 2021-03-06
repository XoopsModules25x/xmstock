<div class="xmstock">
	<ol class="breadcrumb">
        <li><a href="index.php"><{$smarty.const._MA_XMSTOCK_HOME}></a></li>
        <li class="active"><{$smarty.const._MA_XMSTOCK_CADDY}></li>
    </ol>	
	<{if $error_message != ''}>
		<div class="alert alert-danger" role="alert"><{$error_message}></div>
	
	<{else}>
		<form name="formcaddy" id="formcaddy" action="caddy.php" method="post">
			<table class="table table-striped">
				<tr>
					<th><{$smarty.const._MA_XMSTOCK_CADDY_ITMES}></th>
					<th class="width30"><{$smarty.const._MA_XMSTOCK_CADDY_AREA}></th>
					<th class="txtcenter width10"><{$smarty.const._MA_XMSTOCK_CADDY_QUANTITY}></th>
					<th class="txtcenter width15"><{$smarty.const._MA_XMSTOCK_ACTION}></th>
				</tr>
				<{foreach item=article from=$articles}>
					<tr>
						<td><{$article.name}></td>
						<td>
							<{$article.area}>
							<input type="hidden" name="area_<{$article.count}>" id="area_<{$article.count}>" value="<{$article.areaid}>">
							<span class="badge"><{$article.amount}></span>							
						</td>       
						<td>
							<input class="form-control" type="number" name="qty_<{$article.count}>" id="qty_<{$article.count}>" value="<{$article.qty}>" min = "1" max="<{$article.amount}>">
						</td>
						<td class="txtcenter width10">
							<a href="<{$xoops_url}>/modules/xmstock/caddy.php?op=del&article_id=<{$article.id}>&area_id=<{$article.areaid}>" class="btn btn-default"><span class="glyphicon glyphicon-trash"></span></a>
						</td>
					</tr>
					
				<{/foreach}>
				<tr>
					<td class="txtright" colspan="2"><h3>Total</h3></td>
					<td class="txtcenter"><h3><{$total}></h3></td>
					<td>&nbsp;</td>
				</tr>		
			</table>
			<input type="hidden" name="op" id="op" value="update">
			<div class="xm-stock-general-button">
				<div class="btn-group" role="group" aria-label="...">
					<button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-refresh"></span> <{$smarty.const._MA_XMSTOCK_CADDY_UPDATE}></button>
					<a href="<{$xoops_url}>/modules/xmstock/caddy.php?op=empty" class="btn btn-default"><span class="glyphicon glyphicon-trash"></span> <{$smarty.const._MA_XMSTOCK_CADDY_EMPTY}></a>
					<a href="<{$return_url}>" class="btn btn-default"><span class="glyphicon glyphicon-circle-arrow-left"></span> <{$smarty.const._MA_XMSTOCK_CADDY_CONTINUE}></a>
				</div>
			</div>
		</form>		
		<div class="xm-stock-general-button">
			<a href="<{$xoops_url}>/modules/xmstock/checkout.php" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span> <{$smarty.const._MA_XMSTOCK_CADDY_STEP1_2}></a>	
		</div>

		<table class="xmstock_step_body">
			<tr>
				<td class="xmstock_step_active">
					<span><{$smarty.const._MA_XMSTOCK_CADDY_STEP1}></span>
				</td>
				<td class="xmstock_step_img">
					<img src="<{$xoops_url}>/modules/xmstock/assets/images/step2.png" alt="">
				</td>
				<td class="xmstock_step">
					<span><{$smarty.const._MA_XMSTOCK_CADDY_STEP2}></span>
				</td>
				<td class="xmstock_step_img">
					<img src="<{$xoops_url}>/modules/xmstock/assets/images/step1.png" alt="">
				</td>
				<td class="xmstock_step">
					<span><{$smarty.const._MA_XMSTOCK_CADDY_STEP3}></span>
				</td>
			</tr>
		</table>
	<{/if}>
</div><!-- .xmstock -->