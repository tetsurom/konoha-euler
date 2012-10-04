(4..396).each do |i|
	open("problem/#{sprintf("%04d",i)}.k", "a") { |f|
		f << "\n"
		f << "import(\"konoha\");\n"
		f << "\n"
		f << "void main() {\n"
		f << "\n"
		f << "}\n"
		f << "\n"
		f << "main();\n"
	}
end
