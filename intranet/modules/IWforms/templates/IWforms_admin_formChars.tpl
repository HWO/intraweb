{if $form.lang neq ''}
<div class="formRowDefinition">
    <img src="images/flags/flag-{$form.lang}.png" />
</div>
{/if}

<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'unique')" title="{gt text="Change the state"}" style="font-weight: 400;">
       {gt text="Only answer"}:
       {if $form.unique}
       <span class="active">{gt text="Yes"}</span>
        {else}
        <span class="inactive">{gt text="No"}</span>
        {/if}
    </a>
</div>

<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'annonimous')" title="{gt text="Change the state"}" style="font-weight: 400;">
       {gt text="Anonymous"}:
       {if $form.annonimous}
       <span class="active">{gt text="Yes"}</span>
        {else}
        <span class="inactive">{gt text="No"}</span>
        {/if}
    </a>
</div>
{*}
<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'closeableNotes')" title="{gt text="Change the state"}" style="font-weight: 400;">
       {gt text="Closed notes"}:
       {if $form.closeableNotes}
       <span class="active">{gt text="Yes"}</span>
        {else}
        <span class="inactive">{gt text="No"}</span>
        {/if}
    </a>
</div>
{*}
<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'closeableInsert')" title="{gt text="Change the state"}" style="font-weight: 400;">
       {gt text="Closed form"}:
       {if $form.closeableInsert}
       <span class="active">{gt text="Yes"}</span>
        {else}
        <span class="inactive">{gt text="No"}</span>
        {/if}
    </a>
</div>
<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'closeInsert')" title="{gt text="Change the state"}" style="font-weight: 400;">
       {gt text="Initially closed"}:
       {if $form.closeInsert}
       <span class="active">{gt text="Yes"}</span>
        {else}
        <span class="inactive">{gt text="No"}</span>
        {/if}
    </a>
</div>
<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'unregisterednotusersview')" title="{gt text="Change the state"}" style="font-weight: 400;">
       {gt text="NR can not see users information"}:
       {if $form.unregisterednotusersview}
       <span class="active">{gt text="Yes"}</span>
        {else}
        <span class="inactive">{gt text="No"}</span>
        {/if}
    </a>
</div>
<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'unregisterednotexport')" title="{gt text="Change the state"}" style="font-weight: 400;">
       {gt text="NR can not export"}:
       {if $form.unregisterednotexport}
       <span class="active">{gt text="Yes"}</span>
        {else}
        <span class="inactive">{gt text="No"}</span>
        {/if}
    </a>
</div>
<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'publicResponse')" title="{gt text="Change the state"}" style="font-weight: 400;">
       {gt text="Public answer"}:
       {if $form.publicResponse}
       <span class="active">{gt text="Yes"}</span>
        {else}
        <span class="inactive">{gt text="No"}</span>
        {/if}
    </a>
</div>
<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'allowComments')" title="{gt text="Allow comments"}" style="font-weight: 400;">
       {gt text="Allow comments"}:
       {if $form.allowComments}
       <span class="active">{gt text="Yes"}</span>
        {else}
        <span class="inactive">{gt text="No"}</span>
        {/if}
    </a>
</div>
<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'expertMode')" title="{gt text="Expert mode"}" style="font-weight: 400;">
       {gt text="Expert mode"}:
       {if $form.expertMode}
       <span class="active">{gt text="Yes"}</span>
        {else}
        <span class="inactive">{gt text="No"}</span>
        {/if}
    </a>
</div>
{if $form.new neq '00/00/00'}
<div class="formRowDefinition">
    <span class="formRowDefinitionDBField">{gt text="New to"}</span>:
    {$form.new}
</div>
{/if}
{if $form.caducity neq '00/00/00'}
<div class="formRowDefinition">
    <span class="formRowDefinitionDBField">{gt text="Expires in"}</span>:
    {$form.caducity}
</div>
{/if}
<div class="formRowDefinition">
    <a href="javascript:modifyForm({$form.fid},'active')" title="{gt text="Change the state"}" style="font-weight: 400;">
       {gt text="Active/no active"}:
       {if $form.active}
       <span class="active">{gt text="Active"}</span>
        {else}
        <span class="inactive">{gt text="No active"}</span>
        {/if}
    </a>
</div>
<div id="forminfo_{$form.fid}" class="z-hide z-noteinfo">&nbsp;</div>