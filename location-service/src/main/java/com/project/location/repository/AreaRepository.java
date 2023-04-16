package com.project.location.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.location.entity.Area;

@Repository
public interface AreaRepository extends JpaRepository<Area, String> {

	@Query("SELECT a FROM Area a WHERE a.nation=:nation AND a.provincialLevel=:provincialLevel AND a.district=:district AND a.commune=:commune")
	List<Area> findByNationAndProvincialLevelAndDistrictAndCommune(@Param("nation") String nation,@Param("provincialLevel") String provincialLevel
			,@Param("district") String district,@Param("commune") String commune);
	
	@Query("SELECT a FROM Area a WHERE a.nation=:nation AND a.provincialLevel=:provincialLevel AND a.district=:district")
	List<Area> findByNationAndProvincialLevelAndStateAndDistrict(@Param("nation") String nation,@Param("provincialLevel") String provincialLevel, @Param("district") String district);
	
	@Query("SELECT a FROM Area a WHERE a.nation=:nation AND a.provincialLevel=:provincialLevel")
	List<Area> findByNationAndProvincialLevelAndState(@Param("nation") String nation,@Param("provincialLevel") String provincialLevel);
	

}
