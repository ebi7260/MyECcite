package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class UserDeleteDAO {

	/**
	 * ユーザー情報の削除(退会)メソッド
	 */

	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	public int userDeleteInfo(String deleteId) throws SQLException{
		String sql = "DELETE FROM login_user_transaction WHERE login_id=?";

		int result=0;

		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, deleteId);

			result = preparedStatement.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
		return result;
	}

}
