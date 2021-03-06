# This file is part of NIT ( http://www.nitlanguage.org ).
#
# Copyright 2014 Alexis Laferrière <alexis.laf@xymus.net>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import c

var ci = new CIntArray(5)
ci[0] = 0
ci[1] = 1
ci[2] = 2
ci[3] = 3
ci[4] = 4
#alt1#ci[5] = 5

print ci[0]
#alt2#print ci[-1]
#alt3#print ci[5]

for i in ci do print i
print ci.to_a

ci.destroy
#alt4#print ci[0]
