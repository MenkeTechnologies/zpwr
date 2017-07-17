import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by jacobmenke on 6/13/17.
 */
public class parser {
    public static void main(String[] args) {

        String arg = args[0];

        Matcher m = Pattern.compile("(.*) ([0-9]+) (.*)").matcher(arg);

        if (m.find()) {
            System.out.print(m.group(1) + " \\e[34m" + m.group(2) + " \\e[32m" + m.group(3) + "\\e[0m");
        } else {
			System.out.print("no go");
		}
    }
}

