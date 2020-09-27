package Servlet;

import java.io.File;

public class Delete {
   public void Delete(){
       File myObj = new File("");
        if (myObj.delete()) {
            System.out.println("Deleted the folder: " + myObj.getName());
        } else {
            System.out.println("Failed to delete the folder.");
        }
    }
}
