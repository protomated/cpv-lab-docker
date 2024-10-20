<script type="text/javascript">
    {literal}
        $(function() {
            $('input[type="file"]').change(function() {
                //get the file name
                var fileName = $(this).val().replace('C:\\fakepath\\', " ");
                //replace the "Choose a file" label
                $(this).next('.custom-file-label').html(fileName);
            });
        });
    {/literal}
</script>