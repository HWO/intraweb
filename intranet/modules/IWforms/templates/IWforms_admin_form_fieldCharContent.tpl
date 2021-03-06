{if $field.collapse}
{if not "-100-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'collapse')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Expand"} {img modname='core' src='db_update.png' set='icons/extrasmall'   __alt="Expand" __title="Expand"}
</a>
{/if}
{else}
{if not "-100-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'collapse')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Collapse"} {img modname='core' src='db_comit.png' set='icons/extrasmall'   __alt="Collapse" __title="Collapse"}
</a>
<br />
{/if}
{if "-1-"|strstr:$field.fieldTypePlus}
{gt text="Size of the box"}:
{$field.size}
<br />
{/if}
{if "-7-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'publicFile')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Public File"}:
   {if $field.publicFile}
   <span class="active">{gt text="Yes"}</span>
    {else}
    <span class="inactive">{gt text="No"}</span>
    {/if}
</a>
<br />
{/if}
{if "-2-"|strstr:$field.fieldTypePlus}
{gt text="No. Column"}:
{$field.cols}
<br />
{/if}
{if "-2-"|strstr:$field.fieldTypePlus}
{gt text="No. Row"}:
{$field.rows}
<br />
{/if}
{if "-2-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'editor')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Incorporates the HTML editor"}:
   {if $field.editor}
   <span class="active">{gt text="Yes"}</span>
    {else}
    <span class="inactive">{gt text="No"}</span>
    {/if}
</a>
<br />
{/if}
{if "-8-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'checked')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Default yes"}:
   {if $field.checked}
   <span class="active">{gt text="Yes"}</span>
    {else}
    <span class="inactive">{gt text="No"}</span>
    {/if}
</a>
<br />
{/if}
{if "-6-"|strstr:$field.fieldTypePlus}
{gt text="Options"}:
{$field.options}
{if $field.group != ''}
<br/>
{gt text="Op. group"}:
{$field.group}
{/if}
<br />
{/if}
{if "-4-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'calendar')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="JavaScript Calendar"}:
   {if $field.calendar}
   <span class="active">{gt text="Yes"}</span>
    {else}
    <span class="inactive">{gt text="No"}</span>
    {/if}
</a>
<br />
{/if}
{if "-52-"|strstr:$field.fieldTypePlus}
{gt text="Thickness of the line"}:
{$field.height} px
<br />
{/if}
{if "-52-"|strstr:$field.fieldTypePlus}
{gt text="Color Line"}:
<span style="background-color:{$field.color};">{$field.color}</span>
<br />
{/if}
{if "-53-"|strstr:$field.fieldTypePlus}
{gt text="Background color"}:
<span style="background-color:{$field.colorf};">{$field.colorf}</span>
<br />
{/if}
{if not "-8-51-52-53-100-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'required')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Required"}:
   {if $field.required}
   <span class="active">{gt text="Yes"}</span>
    {else}
    <span class="inactive">{gt text="No"}</span>
    {/if}
</a>
<br />
{/if}

{if not "-51-52-53-100-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'searchable')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Filterable"}:
   {if $field.searchable}
   <span class="active">{gt text="Yes"}</span>
    {else}
    <span class="inactive">{gt text="No"}</span>
    {/if}
</a>
<br />
{/if}

{*}
{if not "-8-51-52-53-100-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'feedback')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Supports comments"}:
   {if $field.feedback}
   <span class="active">{gt text="Yes"}</span>
    {else}
    <span class="inactive">{gt text="No"}</span>
    {/if}
</a>
<br />
{/if}
{*}

{*}
{if not "-8-51-52-53-100-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'validationNeeded')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Need validation"}:
   {if $field.validationNeeded}
   <span class="active">{gt text="Yes"}</span>
    {else}
    <span class="inactive">{gt text="No"}</span>
    {/if}
</a>
<br />
{/if}
{*}

{*}
{if not "-8-51-52-53-100-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'notify')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Msg to validators"}:
   {if $field.notify}
   <span class="active">{gt text="Yes"}</span>
    {else}
    <span class="inactive">{gt text="No"}</span>
    {/if}
</a>
<br />
{/if}
{*}

{*}
{if not "-100-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'accessType')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Type of acces"}:
   {if $field.accessType eq 0}
   {gt text="Reading and writing"}
   {/if}
   {if $field.accessType eq 1}
   {gt text="Only reading"}
   {/if}
   {if $field.accessType eq 2}
   {gt text="Only validators"}
   {/if}
</a>
<br />
{/if}
{*}

{if not "-51-52-53-100-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'editable')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Editable"}:
   {if $field.editable}
   <span class="active">{gt text="Yes"}</span>
    {else}
    <span class="inactive">{gt text="No"}</span>
    {/if}
</a>
<br />
{/if}

{if "-7-"|strstr:$field.fieldTypePlus}
{if $field.extensions neq ''}
{gt text="Extensions"}: {$field.extensions}
<br />
{/if}
{if $field.imgWidth neq 0}
{gt text="Width"}: {$field.imgWidth}px
<br />
{/if}
{if $field.imgHeight neq 0}
{gt text="Height"}: {$field.imgHeight}px
<br />
{/if}
{/if}

{if not "-100-"|strstr:$field.fieldTypePlus}
<a href="javascript:modifyField({$field.fndid},'active')" title="{gt text="Change the state"}" style="font-weight: 400;">
   {gt text="Active/no active"}:
   {if $field.active}
   <span class="active">{gt text="Active"}</span>
    {else}
    <span class="inactive">{gt text="No active"}</span>
    {/if}
</a>
{/if}
{/if}
<div id="fieldinfo_{$field.fndid}" class="z-hide z-noteinfo"></div>