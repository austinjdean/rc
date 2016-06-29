import sublime, sublime_plugin

class EndSemi(sublime_plugin.TextCommand):
	def run(self, edit):
		self.view.run_command("move_to", {"to": "eol", "extend": "false"})
		self.view.insert(edit, self.view.sel()[0].begin(), ";")
