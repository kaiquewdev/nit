# This file is part of NIT ( http://www.nitlanguage.org ).
#
# Copyright 2009 Jean Privat <jean@pryen.org>
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

import kernel

class A
	meth indent(i: Int, j, c: Char)
	do
		var ii = i
		while ii > 0 do
			' '.output
			ii -= 1
		end
		c.output
		j.output
		','.output
		i.output
	end

	meth foo(i: Int, j: Char)
		with bar
	do
		if i >= 3 then
			indent(i, j, '{')
			bar
			indent(i, j, '}')
			return
		end

		indent(i, j, '[')
		foo(i+1, 'a') with do
			foo(i+1, 'b') with do
				foo(i+1, 'c') with do
					indent(i, j, '<')
					bar
					indent(i, j, '>')
				end
			end
		end
		indent(i, j, ']')
	end
end

meth start
do
	var a = new A
	0.output
	a.foo(0, 'A') with do 
		a.foo(0, 'B') with do 
			a.foo(0, 'C') with do 
				1.output
				#alt1# break
				#alt2# return
			end
		end
	end
	2.output
end

start
3.output