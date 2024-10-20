<div class="form-horizontal" style="margin-bottom: 30px;">
    <div class="form-group">
        <div class="col-xs-12">
            <label>Upload Campaign <p class="help-block display-inline">| csv file</p></label>
            <div class="row">
                <div class="col-sm-12">
                    <div class="display-table width-full">
                        <div class="display-table-row">
                            <div class="display-table-cell" style="padding-right: 10px; vertical-align: top;">
                                <div class="orb-form block-file-upload">
                                    <label class="input input-file" for="file">
                                        <div class="button">
                                            <input type="file" name="uplCampaign" id="uplCampaign"/>
                                            Browse
                                        </div>
                                        <input type="text" readonly=""/>
                                    </label>
                                </div>
                            </div>
                            <div class="display-table-cell" style="width: 1%; vertical-align: top; padding-right: 20px;">
                                <button type="submit" name="btnUploadCampaign_x" class="btn btn-primary" onclick="return checkUpload()"><i class="fa fa-upload"></i> Upload</button>
							</div>
                            <div class="display-table-cell" style="width: 1%; vertical-align: top;">
								<a href="stats.php?camp={$campaignID}" class="btn btn-info">Open Stats</a>
                            </div>
                        </div>
                        {include file='partFileUploadJS.tpl'}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>