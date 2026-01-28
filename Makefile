string := toto;tata;titi;tutu;tyty

tokenize_string:
	@TOKENS="$$(./tokenize_string.sh -s '$(string)')"; \
	echo "$$TOKENS"; \
	FIRST="$$(echo "$$TOKENS" | awk '{print $$1}')"; \
	echo "$$FIRST"
