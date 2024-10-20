{include file="partMessage.tpl"}

<div class="card" id="wdgReferrerCategoriesModify">
    <div class="card-header">
        <h4>{if $editMode}Edit{else}Add{/if} Referrer Category</h4>
    </div>
    <div class="card-body">
        <div class="row">
          <div class="col-xl-6 col-lg-8 col-md-12">
              <div class="form-group mb-4">
                  <label>Category Name</label>
                  <input type="text" name="txtCategory" id="txtCategory" class="form-control" value="{$currentCategory|default:''}"/>
              </div>
              <button name="btnSave_x" onclick="return validateName('txtCategory','Category')" class="btn btn-primary mr-3">Save</button>
              {if $editMode}
              <button name="btnCancel" onclick="window.location.href='referrer-categories.php'; return false" class="btn btn-secondary">Cancel</button>
              {/if}
          </div>
        </div>
    </div>
</div>

<div class="card" id="wdgReferrerCategoriesCurrent">
    <div class="card-header">
        <h4>Current Referrer Categories</h4>
    </div>
    <div class="card-body">
        <table id="tblReferrerCategories" class="{$theme_table_classes} text-nowrap dtSettings" style="width:100%">
            <thead>
                <tr>
                    <th>Category Name</th>
                    <th class="text-center">Date Added</th>
					<th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                {foreach $categories as $category}
                    <tr>
                        <td>{$category.SiteCategory}</td>
                        <td class="text-center">{$category.CreateDate|date_format:$globalDateFormat}</td>
                        <td class="text-right">
                            <a href="referrer-categories.php?id={$category.SiteCategoryID}" class="btn btn-primary btn-sm mr-2"><i class="fe fe-edit"></i>&nbsp;Edit</a>
							{include file='partButtonDelete.tpl' itemID=$category.SiteCategoryID}
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
        <input type="hidden" name="hidEditID" value="{$editID}"/>
    </div>
</div>
