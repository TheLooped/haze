lua << EOF
package.loaded['haze'] = nil
package.loaded['haze.util'] = nil
package.loaded['haze.palette'] = nil
package.loaded['haze.theme'] = nil
package.loaded['haze.functions'] = nil

require('haze').set()
EOF
