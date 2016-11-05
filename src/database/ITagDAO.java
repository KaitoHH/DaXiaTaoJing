package database;

import entity.Tag;

import java.util.HashSet;
import java.util.Set;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/4
 * Description:
 * All rights reserved.
 */
public interface ITagDAO {
	int insert(Tag tag);

	Tag select(int id);

	int select(String name);

	Set<String> getAllTag(int qid);

	boolean insertRelation(int qid, Set<String> set);
}
