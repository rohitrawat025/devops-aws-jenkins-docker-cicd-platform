package com.rohit.portfolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.rohit.portfolio.model.Profile;

public interface ProfileRepository extends JpaRepository<Profile, Long> {
}
