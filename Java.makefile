CLASSPATH = /usr/share/tomcat7/lib/servlet-api.jar
JFLAGS = -source 1.7 -target 1.7 -cp $(CLASSPATH)
JC = javac
.SUFFIXES = .java .class

CLASSES = HelloWorld.java
default: classes

classes: $(CLASSES:.java=.class)

%class: %java
	$(JC) $(JFLAGS) $^

clean:
	$(RM) *.class
