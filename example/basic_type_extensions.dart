extension Silly on String {
	void scream() => print("**** ${this.toUpperCase()} ****");
}

void main() {
	var warning = "Extensions are here!";
	warning.scream(); // prints "**** EXTENSIONS ARE HERE! ****"
}