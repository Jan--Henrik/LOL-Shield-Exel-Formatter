PrintWriter output;
// Splitting a String based on a multiple delimiters
String stuff[] = loadStrings("/home/JanHenrik/sketchbook/sign_remover/input.txt");
String pass_string = "},";              //set sytax of the end of every line
void setup() {
  output = createWriter("animation.txt");
}
void draw() {


  for (int j = 0; j < stuff.length; j++) {            //trennt die zeilen von einander
    String[] list = splitTokens(stuff[j], " \t");     //entefernt Tab und leezeichen
    for (int i = 0; i < list.length; i++) {           //Schreibt alles hintereinander
      print(list[i]);
      output.print(list[i]);
      if (list[i].equals(pass_string)) {
        output.println("");                  //setzt "Enter" wenn eine Zeile voll ist
      }
    }
  }
  output.flush();  // Writes the remaining data to the file
  output.close();  // Finishes the file
  exit();
}
