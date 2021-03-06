{include file="IWforms_admin_menu.tpl"}
<div class="z-admincontainer">
    <div class="z-adminpageicon">{img modname='core' src='info.png' set='icons/large'}</div>
    <h2>{gt text="Skin of the form and complete information"} => {$form.formName}</h2>
    <div style="height: 20px;">&nbsp;</div>
    <div style="margin-bottom: 20px;">
        <strong>{gt text="Skin form"}</strong><span class="button"><a href="{modurl modname=IWforms type=admin func=form action=field fid=$form.fid}">{gt text="Edit"}</a></span>
        {$formView}
        <hr>
    </div>

    <div style="margin-bottom: 20px;">
        <strong>{gt text="Define the form"}</strong><span class="button"><a href="{modurl modname=IWforms type=admin func=form do=edit fid=$form.fid aio=1}">{gt text="Edit"}</a></span>
        {$formDefinition}
        <hr>
    </div>

    <div style="margin-bottom: 20px;">
        <div>
            <strong>{gt text="List of groups that have access to the form"}</strong>
        </div>
        {$formGroups}
        <hr>
    </div>

    <div style="margin-bottom: 20px;">
        <div>
            <strong>{gt text="List of validators of the form"}</strong>
        </div>
        {$formValidators}
        <hr>
    </div>
</div>
