package net.skhu.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import net.skhu.dto.Category;

@Mapper
public interface CategoryMapper {

	@Select("SELECT * FROM category")
	static
	List<Category> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}