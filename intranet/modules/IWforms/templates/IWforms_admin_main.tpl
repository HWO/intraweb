{include file="IWforms_admin_menu.tpl"}
<div class="z-admincontainer">
    <div class="z-adminpageicon">{img modname='core' src='windowlist.png' set='icons/large'}</div>
    <div style="height:10px;">&nbsp;</div>
    <h2>{gt text="Forms list"}</h2>
    <div style="height:15px;">&nbsp;</div>
    <table class="z-datatable">
        <thead>
            <tr>
                <th>{gt text="Form name"}</th>
                <th>{gt text="Title of the annotations "}</th>
                <th>{gt text="Category"}</th>
                <th>{gt text="Form description"}</th>
                <th>{gt text="Characteristics"}</th>
                <th>{gt text="Options"}</th>
            </tr>
        </thead>
        <tbody>
            {foreach item=form from=$forms}
            <tr class="{cycle values="z-odd,z-even"}" id="formRow_{$form.fid}">
                <td align="left" style="vertical-align: top;">
                     <a href="{modurl modname='IWforms' type='admin' func='form' action='field' fid=$form.fid}">
                         {$form.formName}
                     </a>
                 </td>
                 <td align="left" style="vertical-align: top;">
                     {$form.title}
                 </td>
                 <td align="left" style="vertical-align: top;">
                     {$form.catName}
                 </td>
                 <td align="left" style="vertical-align: top;">
                     {$form.description}
                     {if isset($topic.tid)}
                     <div id="forminfo_{$topic.tid}" class="z-hide z-noteinfo">&nbsp;</div>
                     {/if}
                 </td>
                 <td align="left" style="vertical-align: top;" width="170">
                 <div id="form_{$form.fid}" name="form_{$form.fid}">
                     {include file="IWforms_admin_formChars.tpl" form=$form}
                 </div>
             </td>
             <td align="center" style="vertical-align: top;">
                 <div>
                     <a href="{modurl modname='IWforms' type='admin' func='infoForm' fid=$form.fid}">
                         {img modname='core' src='editclear.png' set='icons/extrasmall' __alt="Full Form" __title="Full Form"}
                     </a>
                 </div>
                 <div>
                     <a href="{modurl modname='IWforms' type='admin' func='form' do='edit' fid=$form.fid}">
                         {img modname='core' src='edit.png' set='icons/extrasmall' __alt="Edit" __title="Edit"}
                     </a>
                 </div>
                 <div>
                     <a href="{modurl modname='IWforms' type='admin' func='copy' fid=$form.fid}">
                         {img modname='core' src='editcopy.png' set='icons/extrasmall' __alt="Copy" __title="Copy"}
                     </a>
                 </div>
                 <div>
                     <a href="{modurl modname='IWforms' type='admin' func='exportForm' fid=$form.fid}">
                         {img modname='core' src='ark.png' set='icons/extrasmall' __alt="Export" __title="Export"}
                     </a>
                 </div>
                 <div>
                     <a href="{modurl modname='IWforms' type='admin' func='deleteNotes' fid=$form.fid}" title="{gt text="Delete all the notes"}">
                        {img modname='core' src='editdelete.png' set='icons/extrasmall' __alt="Delete notes" __title="Delete notes"}
                 </a>
             </div>
             <div>
                 <a href="javascript:deleteForm({$form.fid})" title="{gt text="Delete the topic"}">
                    {img modname='core' src='14_layer_deletelayer.png' set='icons/extrasmall' __alt="Delete" __title="Delete"}
             </a>
            </div>
        </td>
    </tr>
    {foreachelse}
    <tr>
        <td colspan="5" align="left">
            {gt text="No forms have been found"}
        </td>
    </tr>
    {/foreach}
</tbody>
</table>
</div>
<script type="text/javascript">
    var modifyingform = '{{gt text="...changing the information..."}}';
    var deleteFormText = '{{gt text="Confirms delete the form"}}';
</script>
