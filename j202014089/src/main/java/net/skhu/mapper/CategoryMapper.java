package net.skhu.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import net.skhu.dto.Category;
import net.skhu.dto.Person;

@Mapper
public interface CategoryMapper {

	@Select("SELECT * FROM category")
	static
	List<Person> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Select("SELECT * FROM category WHERE code = #{code}")
	Category findOne(int id);

	@Insert("INSERT person (pid, name,categoryCode, phone, gender, email, title) VALUES (#{pid}, #{name}, #{categoryCode}, #{phone}, #{phone}, #{gender}, #{email}, #{title})")
	@Options(useGeneratedKeys=true, keyProperty="pid")
	void insert(Person person);

	@Update("""

			UPDATE department SET
			pid = #{pid},
			name = #{name},
			categoryCode = #{categoryCode},
			phone = #{phone},
			gender = #{gender},
			email = #{email},
			title = #{title}
			WHERE pid = #{pid}""")

	void update(Person person);

	@Delete("DELETE FROM category WHERE code = #{code}")
	void delete(int code);


}