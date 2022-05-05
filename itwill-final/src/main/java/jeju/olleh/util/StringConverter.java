package jeju.olleh.util;

import javax.annotation.Nullable;

/**
 * convert String to HTML tags
 * 
 * 
 * @author Margin
 */
public class StringConverter {
	
	/**
	 * Divide {@code String} text from DB by enter key, '\n'.<br>
	 * 
	 * And, make it HTML text with {@code HTML tag}
	 * 
	 * @param text
	 * @param titleElement
	 * @param lineElement
	 * @return
	 */
	public String textRendering(String text, @Nullable String titleElement, String lineElement) {
		String renderedText = "";
		String[] textArrayByEnter = text.split("\n");

		for (int i = 0; i < textArrayByEnter.length; i++) {
			// if(textArrayByEnter[i].equals("")) continue;

			if (titleElement != null && renderedText.indexOf(titleElement) == -1) {
				if (titleElement.equals("<span>")) {
					textArrayByEnter[i] = "<p class='sub_bull02'>" + titleElement + textArrayByEnter[i] + "</"
							+ titleElement.substring(1) + "</p>";
					renderedText += textArrayByEnter[i];

				} else {
					textArrayByEnter[i] = titleElement + textArrayByEnter[i] + "</" + titleElement.substring(1);
					renderedText += textArrayByEnter[i];
				}
				continue;

			} else {
				if (lineElement.equals("<li>") && renderedText.indexOf("<ul>") == -1) {
					renderedText += "<ul class='red_list'>";
				}
				textArrayByEnter[i] = lineElement + textArrayByEnter[i] + "</" + lineElement.substring(1);
				renderedText += textArrayByEnter[i];
			}
		}
		if (renderedText.indexOf("<ul>") != -1) {
			renderedText += "</ul>";
		}

		return renderedText;
	}
	
	
	public String enterToBrTag(String text) {
		
		return text.replace("\n", "<br>");
	}
}
