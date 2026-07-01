# Menggunakan imej rasmi Apache Tomcat yang mengandungi Java
FROM tomcat:9.0-jdk11-openjdk-slim

# Membuang aplikasi lalai Tomcat untuk mengelakkan konflik
RUN rm -rf /usr/local/tomcat/webapps/*

# Menyalin fail ROOT.war anda ke dalam folder webapps Tomcat
COPY ROOT.war /usr/local/tomcat/webapps/

# Membuka port 8080 (port lalai Tomcat)
EXPOSE 8080

# Arahan untuk menjalankan pelayan Tomcat
CMD ["catalina.sh", "run"]