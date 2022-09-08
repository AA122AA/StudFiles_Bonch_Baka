
package figure;
 
import java.awt.*;
import java.awt.geom.*;
import java.awt.event.*;

class Figure extends Frame { 

    Figure(String s) { 

        super (s) ;
        setSize(500, 400); 
        setVisible(true); 

        addWindowListener(new WindowAdapter() {

            public void windowClosing(WindowEvent ev){

                System.exit(0); 

            }

        }); 

    }

    public void paint(Graphics gr) { 

        Graphics2D g = (Graphics2D)gr; 

        g.setFont(new Font("Serif", Font.PLAIN, 15)); 

        BasicStroke penl = new BasicStroke(20, BasicStroke.CAP_BUTT,
                                                    BasicStroke.JOIN_MITER,30); 

        BasicStroke pen2 = new BasicStroke(20, BasicStroke.CAP_ROUND,
                                                        BasicStroke.JOIN_ROUND); 

        BasicStroke реnЗ = new BasicStroke(20, BasicStroke.CAP_SQUARE,
                                                        BasicStroke.JOIN_BEVEL); 

        float[] dashl = {5, 20}; 

        BasicStroke pen4 = new BasicStroke(10, BasicStroke.CAP_ROUND,
                                          BasicStroke.JOIN_BEVEL, 10, dashl, 0); 

        float[] dash2 = {10, 5, 5, 5};

        BasicStroke pen5 = new BasicStroke(10, BasicStroke.CAP_BUTT, 
                                          BasicStroke.JOIN_BEVEL, 10, dash2, 0);

        g.setStroke(penl);
        g.draw(new Rectangle2D.Double(50, 50, 50, 50));
        g.draw(new Line2D.Double(50, 180, 150, 180));
        g.setStroke(pen2);

        g.draw(new Rectangle2D.Double(200, 50, 50, 50));
        g.draw(new Line2D.Double(50, 230, 150, 230));
        g.setStroke(реnЗ);

        g.draw(new Rectangle2D.Double(350, 50, 50, 50));
        g.draw(new Line2D.Double(50, 280, 150, 280));
        g.drawString("JOIN_MITER", 40, 130);
        g.drawString("JOIN_ROUND", 180, 130);
        g.drawString("JOINJBEVEL", 330, 130);
        g.drawString("CAP_BUTT", 170, 190);
        g.drawString("CAP_ROUND", 170, 240);
        g.drawString("CAP_SQUARE", 170, 290);
        g.setStroke(pen5);

        g.draw(new Line2D.Double(50, 330, 250, 330)); 
        g.setStroke(pen4);

        g.draw(new Line2D.Double(50, 360, 250, 360)); 
        g.drawString("(10, 5, 5, 5,...)", 260, 335); 
        g.drawString("(5, 10,...)", 260, 365); 

    } 

    public static void main(String[] args) {

            new Figure("Моя программа"); 

    } 

}