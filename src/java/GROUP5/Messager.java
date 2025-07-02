/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package GROUP5;
import java.sql.*;
import java.util.ArrayList;
/**
 *
 * @author Asri Nurul Afni H
 */
public class Messager {
    private String tujuan;

    public Messager(String tujuan) {
        this.tujuan = tujuan;
    }

    public ArrayList<Message> getList() {
        ArrayList<Message> hasil = new ArrayList<>();

        try (Connection conn = Koneksi.connect()) {
            String sql = "SELECT * FROM percakapan WHERE tujuan=? ORDER BY id DESC";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, tujuan);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Message msg = new Message();
                msg.pengirim = rs.getString("pengirim");
                msg.pesan = rs.getString("pesan");
                hasil.add(msg);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return hasil;
    }

    public void addMessage(String pengirim, String pesan) {
        try (Connection conn = Koneksi.connect()) {
            String sql = "INSERT INTO percakapan (tujuan, pengirim, pesan) VALUES (?, ?, ?)";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, tujuan);
            st.setString(2, pengirim);
            st.setString(3, pesan);
            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
