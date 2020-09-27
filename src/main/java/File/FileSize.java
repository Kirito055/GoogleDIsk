package File;


import java.io.File;

// в этом классе мы получаем размер файла
public class FileSize {

    // метод возвращает размер файла в мегабайтах
    // длину файла делим на 1 мегабайт (1024 * 1024 байт) и узнаем количество мегабайт
    private static String getFileSizeMegaBytes(File file) {
        return (double) file.length()/(1024*1024)+" mb";
    }

    // метод возвращает размер файла в килобайтах
    // длину файла делим на 1 килобайт (1024 байт) и узнаем количество килобайт
    private static String getFileSizeKiloBytes(File file) {
        return (double) file.length()/1024 + " kb";
    }

    // просто вызываем метод length() и получаем размер файла в байтах
    private static String getFileSizeBytes(File file) {
        return file.length() + " bytes";
    }
}