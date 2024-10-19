<?php
    if (extension_loaded("ionCube Loader")) {
        echo "ionCube Loader is installed.\n";
        echo "Version: " . ioncube_loader_version() . "\n";
    } else {
        echo "ionCube Loader is NOT installed.\n";
    }
    phpinfo();
    ?>
