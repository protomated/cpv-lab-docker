<?php
                                                       echo "Welcome!";

                                                       // Display all the current configuration of the PHP server
                                                       phpinfo();

                                                       // Checking for the installed extensions
                                                       $required_extensions = [
                                                           'BCMath' => 'bcmath',
                                                           'iconv' => 'iconv',
                                                           'mbstring' => 'mbstring',
                                                           'mysqli' => 'mysqli',
                                                           'session' => 'session',
                                                           'SimpleXML' => 'SimpleXML',
                                                           'zip' => 'zip',
                                                           'xmlreader' => 'xmlreader',
                                                           'json' => 'json',
                                                           'ionCube Loader (12.0 or newer)' => 'ionCube Loader'
                                                       ];

                                                       echo "<h2>Extension Check</h2>";
                                                       foreach ($required_extensions as $name => $extension) {
                                                           $status = extension_loaded($extension) ? 'Installed' : 'Not Installed';
                                                           if ($name === 'ionCube Loader (12.0 or newer)' && $status === 'Installed') {
                                                               $ioncube_version = ioncube_loader_version();
                                                               $status = version_compare($ioncube_version, '12.0', '>=') ? 'Installed' : 'Version too low';
                                                           }
                                                           echo "<p><strong>$name:</strong> $status</p>";
                                                       }
                                                       ?>