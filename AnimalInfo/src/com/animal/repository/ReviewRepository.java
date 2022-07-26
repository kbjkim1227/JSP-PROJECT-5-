package com.animal.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.animal.domain.Member;
import com.animal.domain.Review;

public class ReviewRepository {
	private static ReviewRepository reviewRepository = new ReviewRepository();
	
	//싱글톤
	public static ReviewRepository getInstance() {
		return reviewRepository;
	}
	
	Connection conn;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	
	//객체생성시 DB CONNECTION생성
	private ReviewRepository() {
		System.out.println("MemberRepository 생성자 생성");
		try {
			Class.forName(DB.DRIVER);
			System.out.println("MemberRepository생성, DB연결");
			System.out.println("========================");
		}catch(Exception e) {
			System.out.println("DB연결 실패");
			System.out.println("========================");
			e.printStackTrace();
		}
	}
	
	public void close() throws SQLException{
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();
	}
	
	public Review createReview(ResultSet rs) throws SQLException{
		Review review = new Review(
				rs.getLong("review_uid"),
				rs.getLong("member_uid"),
				rs.getString("writer"),
				rs.getString("category"),
				rs.getString("title"),
				rs.getString("content"),
				rs.getString("img"),
				rs.getInt("view_count"),
				rs.getString("regdate")
		);
		return review;
	}
		
	//insert
	public int save(Review review) throws SQLException{
		int result = 0;
		try {
			conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
			pstmt = conn.prepareStatement("insert into review values(review_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt.setLong(1,  review.getMember_uid());
			pstmt.setString(2, review.getWriter());
			pstmt.setString(3, review.getCategory());
			pstmt.setString(4, review.getTitle());
			pstmt.setString(5, review.getContent());
			pstmt.setString(6, review.getImg());
			pstmt.setInt(7, review.getView_count());
			pstmt.setString(8, review.getRegdate());
			result = pstmt.executeUpdate();
			System.out.println(review.toString()); //리뷰 로그
		}finally {
			close();
		}
		return result;
	}
	
	//select by uid
		public Review findByUid(Long review_uid) throws SQLException{
			Review review = null;
			try {
				conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
				pstmt = conn.prepareStatement("select * from review where review_uid = ?");
				pstmt.setLong(1, review_uid);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					review = createReview(rs);
				}
			}finally {
				close();
			}
			return review;
		}
	
	//select by category
	public List<Review> findByCategory(String category, int startIndex, int endIndex) throws SQLException{
		List<Review> reviews = new ArrayList<>();
		try {
			conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
			pstmt = conn.prepareStatement("select * from " + 
					"(select rownum as rnum, t.* from (select * from review where category = ? order by review_uid desc) t) " + 
					"where rnum >= ? and rnum <= ?");
			pstmt.setString(1, category);
			pstmt.setInt(2, startIndex);
			pstmt.setInt(3, endIndex);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				reviews.add(createReview(rs));
			}
		}finally {
			close();
		}
		return reviews;
	}
	
	//select by category
	public List<Review> findByKeyword(String keyword, int startIndex, int endIndex) throws SQLException{
		List<Review> reviews = new ArrayList<>();
		try {
			conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
			pstmt = conn.prepareStatement("select * from " + 
					"(select rownum as rnum, t.* from (select * from review where title like ? order by review_uid desc) t) " + 
					"where rnum >= ? and rnum <= ?");
			pstmt.setString(1, keyword);
			pstmt.setInt(2, startIndex);
			pstmt.setInt(3, endIndex);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				reviews.add(createReview(rs));
			}
		}finally {
			close();
		}
		return reviews;
	}
	
	//select all
	public List<Review> findAll(int startIndex, int endIndex) throws SQLException{
		List<Review> reviews = new ArrayList<>();
		try {
			conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
			//pstmt = conn.prepareStatement("select * from review order by review_uid desc OFFSET ? ROWS FETCH FIRST ? ROWS ONLY");
			pstmt = conn.prepareStatement("select * from " + 
					"(select rownum as rnum, t.* from (select * from review order by review_uid desc) t) " + 
					"where rnum >= ? and rnum <= ?");
			pstmt.setInt(1, startIndex);
			pstmt.setInt(2, endIndex);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				reviews.add(createReview(rs));
			}
		}finally {
			close();
		}
		return reviews;
	}
	
	//update
	public int updateViewCount(Long review_uid) throws SQLException{
		int result = 0;
		try {
			conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
			pstmt = conn.prepareStatement("update review set view_count = view_count + 1 where review_uid = ?");
			pstmt.setLong(1, review_uid);
			result = pstmt.executeUpdate();
		}finally {
			close();
		}
		return result;
	}
	
	//update view_count
		public int update(Review review) throws SQLException{
			int result = 0;
			try {
				conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
				pstmt = conn.prepareStatement("update review set title = ?, content = ?, img = ?  where review_uid = ? and member_uid = ?");
				pstmt.setString(1, review.getTitle());
				pstmt.setString(2, review.getContent());
				pstmt.setString(3, review.getImg());
				pstmt.setLong(4, review.getReview_uid());
				pstmt.setLong(5, review.getMember_uid());
				result = pstmt.executeUpdate();
			}finally {
				close();
			}
			return result;
		}
	
	//delete
	public int delete(Long review_uid, Long member_uid) throws SQLException {
		int result = 0;
		try {
			conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
			pstmt = conn.prepareStatement("delete from review where review_uid = ? and member_uid = ?");
			pstmt.setLong(1, review_uid);
			pstmt.setLong(2, member_uid);
			result = pstmt.executeUpdate();
		}finally {
			close();
		}
		return result;
	}
	
	//select totalListCount
	public int totalListCount() throws SQLException{
		int result = 0;
		try {
			conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
			pstmt = conn.prepareStatement("select count(*) from review");
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		}finally {
			close();
		}
		return result;
	}
	
	//select totalListCount by category
	public int totalListCountByCategory(String category) throws SQLException{
		int result = 0;
		try {
			conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
			pstmt = conn.prepareStatement("select count(*) from review where category = ?");
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		}finally {
			close();
		}
		return result;
	}
	
	//select totalListCount by category
		public int totalListCountByKeyword(String keyword) throws SQLException{
			int result = 0;
			try {
				conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
				pstmt = conn.prepareStatement("select count(*) from review where title like ?");
				pstmt.setString(1, keyword);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					result = rs.getInt(1);
				}
			}finally {
				close();
			}
			return result;
		}
	
	//select totalListCount by member_uid
	public int totalListCountByMember_uid(Long member_uid) throws SQLException{
		int result = 0;
		try {
			conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
			pstmt = conn.prepareStatement("select count(*) from review where member_uid = ?");
			pstmt.setLong(1, member_uid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		}finally {
			close();
		}
		return result;
	}
	
	//select by member_uid
		public List<Review> findByMember_uid(Long member_uid, int startIndex, int endIndex) throws SQLException{
			List<Review> reviews = new ArrayList<>();
			try {
				conn = DriverManager.getConnection(DB.URL, DB.USERID, DB.USERPW);
				//pstmt = conn.prepareStatement("select * from review order by review_uid desc OFFSET ? ROWS FETCH FIRST ? ROWS ONLY");
				pstmt = conn.prepareStatement("select * from " + 
						"(select rownum as rnum, t.* from (select * from review where member_uid = ? order by review_uid desc) t) " + 
						"where rnum >= ? and rnum <= ?");
				pstmt.setLong(1, member_uid);
				pstmt.setInt(2, startIndex);
				pstmt.setInt(3, endIndex);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					reviews.add(createReview(rs));
				}
			}finally {
				close();
			}
			return reviews;
		}
}
