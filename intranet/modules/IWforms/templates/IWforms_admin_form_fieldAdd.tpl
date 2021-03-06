<div class="formContent">
    <div id="newFormField">
        <div class="z-adminpageicon">{img modname='core' src='filenew.png' set='icons/medium'}</div>
        <h2>{gt text="Create a new form field"} {if $item.lang neq ''}<img src="images/flags/flag-{$item.lang}.png" />{/if}</h2>
        <form class="z-form" name="newField" action="{modurl modname='IWforms' type='admin' func='submitField'}" method="post" enctype="application/x-www-form-urlencoded">
            <input type="hidden" name="fid" value="{$item.fid}" />
            <input type="hidden" name="csrftoken" value="{insert name='csrftoken'}" />
            <div class="z-formrow">
                <label for="fieldType">{gt text="Type field"}</label>
                <select id="fieldType" name="fieldType">
                    <option value="0">{gt text="Choose a type of field"}</option>
                    <option value="1">{gt text="Text"}</option>
                    <option value="2">{gt text="Text area"}</option>
                    <option value="3">{gt text="URL"}</option>
                    <option value="4">{gt text="Date"}</option>
                    <option value="5">{gt text="Time"}</option>
                    <option value="6">{gt text="List of options"}</option>
                    <option value="7">{gt text="File"}</option>
                    <option value="8">{gt text="Yes/No"}</option>
                    <option value="51">{gt text="Information"}</option>
                    <option value="52">{gt text="Dividing line"}</option>
                    <option value="53">{gt text="Box"}</option>
                </select>
            </div>
            <div class="z-center">
                <span class="z-buttons">
                    <a href="javascript:createField(document.newField.fieldType.value,{$item.fid})">
                        {img modname='core' src='button_ok.png' set='icons/small' __alt="Create" __title="Create"} {gt text="Create"}
                    </a>
                </span>
                <span class="z-buttons">
                    <a href="{modurl modname='IWforms' type='admin' func='form' action='field' fid=$item.fid}">
                        {img modname='core' src='button_cancel.png' set='icons/small' __alt="Cancel" __title="Cancel"} {gt text="Cancel"}
                    </a>
                </span>
            </div>
        </form>
    </div>
</div>
<script>
    var chooseFiledType = '{{gt text="Choose a field type"}}';
</script>